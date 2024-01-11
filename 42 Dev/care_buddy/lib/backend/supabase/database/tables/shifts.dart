import '../database.dart';

class ShiftsTable extends SupabaseTable<ShiftsRow> {
  @override
  String get tableName => 'shifts';

  @override
  ShiftsRow createRow(Map<String, dynamic> data) => ShiftsRow(data);
}

class ShiftsRow extends SupabaseDataRow {
  ShiftsRow(super.data);

  @override
  SupabaseTable get table => ShiftsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get startTime => getField<String>('start_time');
  set startTime(String? value) => setField<String>('start_time', value);

  String? get endTime => getField<String>('end_time');
  set endTime(String? value) => setField<String>('end_time', value);

  String? get programType => getField<String>('programType');
  set programType(String? value) => setField<String>('programType', value);

  bool? get pickup => getField<bool>('pickup');
  set pickup(bool? value) => setField<bool>('pickup', value);

  bool? get dropoff => getField<bool>('dropoff');
  set dropoff(bool? value) => setField<bool>('dropoff', value);

  List<bool> get tasks => getListField<bool>('tasks');
  set tasks(List<bool>? value) => setListField<bool>('tasks', value);

  List<String> get reports => getListField<String>('reports');
  set reports(List<String>? value) => setListField<String>('reports', value);

  String? get staffID => getField<String>('staffID');
  set staffID(String? value) => setField<String>('staffID', value);

  String? get locationName => getField<String>('locationName');
  set locationName(String? value) => setField<String>('locationName', value);

  String? get locationMapsLink => getField<String>('locationMapsLink');
  set locationMapsLink(String? value) =>
      setField<String>('locationMapsLink', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get shiftDetails => getField<String>('shiftDetails');
  set shiftDetails(String? value) => setField<String>('shiftDetails', value);

  String? get bookingID => getField<String>('bookingID');
  set bookingID(String? value) => setField<String>('bookingID', value);
}
