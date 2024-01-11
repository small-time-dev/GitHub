import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _isStaff = await secureStorage.getBool('ff_isStaff') ?? _isStaff;
    });
    await _safeInitAsync(() async {
      _isDevice = await secureStorage.getBool('ff_isDevice') ?? _isDevice;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _avatarimg = '';
  String get avatarimg => _avatarimg;
  set avatarimg(String value) {
    _avatarimg = value;
  }

  bool _shiftnominated = false;
  bool get shiftnominated => _shiftnominated;
  set shiftnominated(bool value) {
    _shiftnominated = value;
  }

  bool _isStaff = false;
  bool get isStaff => _isStaff;
  set isStaff(bool value) {
    _isStaff = value;
    secureStorage.setBool('ff_isStaff', value);
  }

  void deleteIsStaff() {
    secureStorage.delete(key: 'ff_isStaff');
  }

  bool _isDevice = false;
  bool get isDevice => _isDevice;
  set isDevice(bool value) {
    _isDevice = value;
    secureStorage.setBool('ff_isDevice', value);
  }

  void deleteIsDevice() {
    secureStorage.delete(key: 'ff_isDevice');
  }

  bool _modalOpen = false;
  bool get modalOpen => _modalOpen;
  set modalOpen(bool value) {
    _modalOpen = value;
  }

  String _userID = '';
  String get userID => _userID;
  set userID(String value) {
    _userID = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
