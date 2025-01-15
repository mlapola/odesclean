import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScheduleCampainRecord extends FirestoreRecord {
  ScheduleCampainRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "Base64" field.
  String? _base64;
  String get base64 => _base64 ?? '';
  bool hasBase64() => _base64 != null;

  // "Sended" field.
  bool? _sended;
  bool get sended => _sended ?? false;
  bool hasSended() => _sended != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _base64 = snapshotData['Base64'] as String?;
    _sended = snapshotData['Sended'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schedule_campain');

  static Stream<ScheduleCampainRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScheduleCampainRecord.fromSnapshot(s));

  static Future<ScheduleCampainRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScheduleCampainRecord.fromSnapshot(s));

  static ScheduleCampainRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScheduleCampainRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScheduleCampainRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScheduleCampainRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScheduleCampainRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScheduleCampainRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScheduleCampainRecordData({
  String? message,
  DateTime? date,
  String? type,
  String? base64,
  bool? sended,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'date': date,
      'type': type,
      'Base64': base64,
      'Sended': sended,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScheduleCampainRecordDocumentEquality
    implements Equality<ScheduleCampainRecord> {
  const ScheduleCampainRecordDocumentEquality();

  @override
  bool equals(ScheduleCampainRecord? e1, ScheduleCampainRecord? e2) {
    return e1?.message == e2?.message &&
        e1?.date == e2?.date &&
        e1?.type == e2?.type &&
        e1?.base64 == e2?.base64 &&
        e1?.sended == e2?.sended;
  }

  @override
  int hash(ScheduleCampainRecord? e) => const ListEquality()
      .hash([e?.message, e?.date, e?.type, e?.base64, e?.sended]);

  @override
  bool isValidKey(Object? o) => o is ScheduleCampainRecord;
}
