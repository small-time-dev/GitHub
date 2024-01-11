import '../database.dart';

class UserRolesTable extends SupabaseTable<UserRolesRow> {
  @override
  String get tableName => 'userRoles';

  @override
  UserRolesRow createRow(Map<String, dynamic> data) => UserRolesRow(data);
}

class UserRolesRow extends SupabaseDataRow {
  UserRolesRow(super.data);

  @override
  SupabaseTable get table => UserRolesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('userId');
  set userId(String? value) => setField<String>('userId', value);

  String? get roleId => getField<String>('roleId');
  set roleId(String? value) => setField<String>('roleId', value);
}
