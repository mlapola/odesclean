// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProcedimentosStruct extends FFFirebaseStruct {
  ProcedimentosStruct({
    String? name,
    String? initial,
    String? notice,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _initial = initial,
        _notice = notice,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "initial" field.
  String? _initial;
  String get initial => _initial ?? '';
  set initial(String? val) => _initial = val;

  bool hasInitial() => _initial != null;

  // "notice" field.
  String? _notice;
  String get notice => _notice ?? '';
  set notice(String? val) => _notice = val;

  bool hasNotice() => _notice != null;

  static ProcedimentosStruct fromMap(Map<String, dynamic> data) =>
      ProcedimentosStruct(
        name: data['name'] as String?,
        initial: data['initial'] as String?,
        notice: data['notice'] as String?,
      );

  static ProcedimentosStruct? maybeFromMap(dynamic data) => data is Map
      ? ProcedimentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'initial': _initial,
        'notice': _notice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'initial': serializeParam(
          _initial,
          ParamType.String,
        ),
        'notice': serializeParam(
          _notice,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProcedimentosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProcedimentosStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        initial: deserializeParam(
          data['initial'],
          ParamType.String,
          false,
        ),
        notice: deserializeParam(
          data['notice'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProcedimentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProcedimentosStruct &&
        name == other.name &&
        initial == other.initial &&
        notice == other.notice;
  }

  @override
  int get hashCode => const ListEquality().hash([name, initial, notice]);
}

ProcedimentosStruct createProcedimentosStruct({
  String? name,
  String? initial,
  String? notice,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProcedimentosStruct(
      name: name,
      initial: initial,
      notice: notice,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProcedimentosStruct? updateProcedimentosStruct(
  ProcedimentosStruct? procedimentos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    procedimentos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProcedimentosStructData(
  Map<String, dynamic> firestoreData,
  ProcedimentosStruct? procedimentos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (procedimentos == null) {
    return;
  }
  if (procedimentos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && procedimentos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final procedimentosData =
      getProcedimentosFirestoreData(procedimentos, forFieldValue);
  final nestedData =
      procedimentosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = procedimentos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProcedimentosFirestoreData(
  ProcedimentosStruct? procedimentos, [
  bool forFieldValue = false,
]) {
  if (procedimentos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(procedimentos.toMap());

  // Add any Firestore field values
  procedimentos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProcedimentosListFirestoreData(
  List<ProcedimentosStruct>? procedimentoss,
) =>
    procedimentoss
        ?.map((e) => getProcedimentosFirestoreData(e, true))
        .toList() ??
    [];
