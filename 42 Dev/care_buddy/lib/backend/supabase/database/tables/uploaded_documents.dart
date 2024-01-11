import '../database.dart';

class UploadedDocumentsTable extends SupabaseTable<UploadedDocumentsRow> {
  @override
  String get tableName => 'uploaded_documents';

  @override
  UploadedDocumentsRow createRow(Map<String, dynamic> data) =>
      UploadedDocumentsRow(data);
}

class UploadedDocumentsRow extends SupabaseDataRow {
  UploadedDocumentsRow(super.data);

  @override
  SupabaseTable get table => UploadedDocumentsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);

  String? get uploadedBy => getField<String>('uploaded_by');
  set uploadedBy(String? value) => setField<String>('uploaded_by', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  String? get userOwnerId => getField<String>('user_owner_id');
  set userOwnerId(String? value) => setField<String>('user_owner_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
