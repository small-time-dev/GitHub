import '../database.dart';

class StaffDetailsTable extends SupabaseTable<StaffDetailsRow> {
  @override
  String get tableName => 'staff_details';

  @override
  StaffDetailsRow createRow(Map<String, dynamic> data) => StaffDetailsRow(data);
}

class StaffDetailsRow extends SupabaseDataRow {
  StaffDetailsRow(super.data);

  @override
  SupabaseTable get table => StaffDetailsTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get position => getField<String>('position');
  set position(String? value) => setField<String>('position', value);

  DateTime? get employmentdate => getField<DateTime>('employmentdate');
  set employmentdate(DateTime? value) =>
      setField<DateTime>('employmentdate', value);

  DateTime? get terminationdate => getField<DateTime>('terminationdate');
  set terminationdate(DateTime? value) =>
      setField<DateTime>('terminationdate', value);

  String? get payrate => getField<String>('payrate');
  set payrate(String? value) => setField<String>('payrate', value);

  DateTime? get cprexpiry => getField<DateTime>('cprexpiry');
  set cprexpiry(DateTime? value) => setField<DateTime>('cprexpiry', value);

  String? get cprcertificate => getField<String>('cprcertificate');
  set cprcertificate(String? value) =>
      setField<String>('cprcertificate', value);

  DateTime? get firstaidexpiry => getField<DateTime>('firstaidexpiry');
  set firstaidexpiry(DateTime? value) =>
      setField<DateTime>('firstaidexpiry', value);

  String? get firstaidcertificate => getField<String>('firstaidcertificate');
  set firstaidcertificate(String? value) =>
      setField<String>('firstaidcertificate', value);

  DateTime? get policecheckexpiry => getField<DateTime>('policecheckexpiry');
  set policecheckexpiry(DateTime? value) =>
      setField<DateTime>('policecheckexpiry', value);

  String? get policecheckcertificate =>
      getField<String>('policecheckcertificate');
  set policecheckcertificate(String? value) =>
      setField<String>('policecheckcertificate', value);

  String? get ndiswcnumber => getField<String>('ndiswcnumber');
  set ndiswcnumber(String? value) => setField<String>('ndiswcnumber', value);

  DateTime? get ndiswcexpiry => getField<DateTime>('ndiswcexpiry');
  set ndiswcexpiry(DateTime? value) =>
      setField<DateTime>('ndiswcexpiry', value);

  String? get ndiswccertificate => getField<String>('ndiswccertificate');
  set ndiswccertificate(String? value) =>
      setField<String>('ndiswccertificate', value);

  String? get wwccnumber => getField<String>('wwccnumber');
  set wwccnumber(String? value) => setField<String>('wwccnumber', value);

  DateTime? get wwccexpiry => getField<DateTime>('wwccexpiry');
  set wwccexpiry(DateTime? value) => setField<DateTime>('wwccexpiry', value);

  String? get wwcccertificate => getField<String>('wwcccertificate');
  set wwcccertificate(String? value) =>
      setField<String>('wwcccertificate', value);

  DateTime? get ndisorientationexpiry =>
      getField<DateTime>('ndisorientationexpiry');
  set ndisorientationexpiry(DateTime? value) =>
      setField<DateTime>('ndisorientationexpiry', value);

  String? get ndisorientationcertificate =>
      getField<String>('ndisorientationcertificate');
  set ndisorientationcertificate(String? value) =>
      setField<String>('ndisorientationcertificate', value);

  String? get qualifications => getField<String>('qualifications');
  set qualifications(String? value) =>
      setField<String>('qualifications', value);

  String? get contractDetails => getField<String>('contract_details');
  set contractDetails(String? value) =>
      setField<String>('contract_details', value);

  int? get daysEmployed => getField<int>('days_employed');
  set daysEmployed(int? value) => setField<int>('days_employed', value);

  int? get shiftsWorked => getField<int>('shifts_worked');
  set shiftsWorked(int? value) => setField<int>('shifts_worked', value);

  String? get teamLeaderId => getField<String>('team_leader_id');
  set teamLeaderId(String? value) => setField<String>('team_leader_id', value);
}
