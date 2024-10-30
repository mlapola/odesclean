import '../database.dart';

class InstanceTable extends SupabaseTable<InstanceRow> {
  @override
  String get tableName => 'instance';

  @override
  InstanceRow createRow(Map<String, dynamic> data) => InstanceRow(data);
}

class InstanceRow extends SupabaseDataRow {
  InstanceRow(super.data);

  @override
  SupabaseTable get table => InstanceTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get instance => getField<String>('instance');
  set instance(String? value) => setField<String>('instance', value);

  String? get imgUrl => getField<String>('img-url');
  set imgUrl(String? value) => setField<String>('img-url', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);
}
