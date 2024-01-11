import '../database.dart';

class TeamLeadersTable extends SupabaseTable<TeamLeadersRow> {
  @override
  String get tableName => 'teamLeaders';

  @override
  TeamLeadersRow createRow(Map<String, dynamic> data) => TeamLeadersRow(data);
}

class TeamLeadersRow extends SupabaseDataRow {
  TeamLeadersRow(super.data);

  @override
  SupabaseTable get table => TeamLeadersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get shiftID => getField<String>('shiftID');
  set shiftID(String? value) => setField<String>('shiftID', value);
}
