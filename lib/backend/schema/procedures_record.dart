import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProceduresRecord extends FirestoreRecord {
  ProceduresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('procedures');

  static Stream<ProceduresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProceduresRecord.fromSnapshot(s));

  static Future<ProceduresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProceduresRecord.fromSnapshot(s));

  static ProceduresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProceduresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProceduresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProceduresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProceduresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProceduresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProceduresRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProceduresRecordDocumentEquality implements Equality<ProceduresRecord> {
  const ProceduresRecordDocumentEquality();

  @override
  bool equals(ProceduresRecord? e1, ProceduresRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(ProceduresRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is ProceduresRecord;
}
