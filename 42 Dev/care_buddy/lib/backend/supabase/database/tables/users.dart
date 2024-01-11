import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  bool? get isClient => getField<bool>('is_client');
  set isClient(bool? value) => setField<bool>('is_client', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get middleName => getField<String>('middle_name');
  set middleName(String? value) => setField<String>('middle_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  DateTime? get dateOfBirth => getField<DateTime>('date_of_birth');
  set dateOfBirth(DateTime? value) =>
      setField<DateTime>('date_of_birth', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get homeAddress => getField<String>('home_address');
  set homeAddress(String? value) => setField<String>('home_address', value);

  String? get suburb => getField<String>('suburb');
  set suburb(String? value) => setField<String>('suburb', value);

  int? get postCode => getField<int>('post_code');
  set postCode(int? value) => setField<int>('post_code', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get additionalNote => getField<String>('additional_note');
  set additionalNote(String? value) =>
      setField<String>('additional_note', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get reviewDate => getField<DateTime>('review_date');
  set reviewDate(DateTime? value) => setField<DateTime>('review_date', value);

  String? get inviteCode => getField<String>('invite_code');
  set inviteCode(String? value) => setField<String>('invite_code', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get archivedAt => getField<DateTime>('archived_at');
  set archivedAt(DateTime? value) => setField<DateTime>('archived_at', value);

  DateTime? get lastLogin => getField<DateTime>('last_login');
  set lastLogin(DateTime? value) => setField<DateTime>('last_login', value);

  String? get emergContOneName => getField<String>('emerg_cont_one_name');
  set emergContOneName(String? value) =>
      setField<String>('emerg_cont_one_name', value);

  String? get emergContOnePhone => getField<String>('emerg_cont_one_phone');
  set emergContOnePhone(String? value) =>
      setField<String>('emerg_cont_one_phone', value);

  String? get emergContOneEmail => getField<String>('emerg_cont_one_email');
  set emergContOneEmail(String? value) =>
      setField<String>('emerg_cont_one_email', value);

  String? get emergContTwoName => getField<String>('emerg_cont_two_name');
  set emergContTwoName(String? value) =>
      setField<String>('emerg_cont_two_name', value);

  String? get emergContTwoPhone => getField<String>('emerg_cont_two_phone');
  set emergContTwoPhone(String? value) =>
      setField<String>('emerg_cont_two_phone', value);

  String? get emergContTwoEmail => getField<String>('emerg_cont_two_email');
  set emergContTwoEmail(String? value) =>
      setField<String>('emerg_cont_two_email', value);
}
