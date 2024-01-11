import '../database.dart';

class GroupBookingsTable extends SupabaseTable<GroupBookingsRow> {
  @override
  String get tableName => 'groupBookings';

  @override
  GroupBookingsRow createRow(Map<String, dynamic> data) =>
      GroupBookingsRow(data);
}

class GroupBookingsRow extends SupabaseDataRow {
  GroupBookingsRow(super.data);

  @override
  SupabaseTable get table => GroupBookingsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get programType => getField<String>('programType');
  set programType(String? value) => setField<String>('programType', value);
}
