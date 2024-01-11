import '../database.dart';

class StaffClientPairingsTable extends SupabaseTable<StaffClientPairingsRow> {
  @override
  String get tableName => 'staffClientPairings';

  @override
  StaffClientPairingsRow createRow(Map<String, dynamic> data) =>
      StaffClientPairingsRow(data);
}

class StaffClientPairingsRow extends SupabaseDataRow {
  StaffClientPairingsRow(super.data);

  @override
  SupabaseTable get table => StaffClientPairingsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get shiftID => getField<String>('shiftID');
  set shiftID(String? value) => setField<String>('shiftID', value);

  String? get staffID => getField<String>('staffID');
  set staffID(String? value) => setField<String>('staffID', value);

  String? get clientID => getField<String>('clientID');
  set clientID(String? value) => setField<String>('clientID', value);
}
