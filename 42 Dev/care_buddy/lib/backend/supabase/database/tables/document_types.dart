import '../database.dart';

class DocumentTypesTable extends SupabaseTable<DocumentTypesRow> {
  @override
  String get tableName => 'document_types';

  @override
  DocumentTypesRow createRow(Map<String, dynamic> data) =>
      DocumentTypesRow(data);
}

class DocumentTypesRow extends SupabaseDataRow {
  DocumentTypesRow(super.data);

  @override
  SupabaseTable get table => DocumentTypesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
