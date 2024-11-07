import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParkingFeesRecord extends FirestoreRecord {
  ParkingFeesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "TimeIn" field.
  DateTime? _timeIn;
  DateTime? get timeIn => _timeIn;
  bool hasTimeIn() => _timeIn != null;

  // "TimeOut" field.
  DateTime? _timeOut;
  DateTime? get timeOut => _timeOut;
  bool hasTimeOut() => _timeOut != null;

  // "TotalFees" field.
  int? _totalFees;
  int get totalFees => _totalFees ?? 0;
  bool hasTotalFees() => _totalFees != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userID = snapshotData['userID'] as DocumentReference?;
    _timeIn = snapshotData['TimeIn'] as DateTime?;
    _timeOut = snapshotData['TimeOut'] as DateTime?;
    _totalFees = castToType<int>(snapshotData['TotalFees']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('parkingFees')
          : FirebaseFirestore.instance.collectionGroup('parkingFees');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('parkingFees').doc(id);

  static Stream<ParkingFeesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParkingFeesRecord.fromSnapshot(s));

  static Future<ParkingFeesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParkingFeesRecord.fromSnapshot(s));

  static ParkingFeesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParkingFeesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParkingFeesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParkingFeesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParkingFeesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParkingFeesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParkingFeesRecordData({
  DocumentReference? userID,
  DateTime? timeIn,
  DateTime? timeOut,
  int? totalFees,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'TimeIn': timeIn,
      'TimeOut': timeOut,
      'TotalFees': totalFees,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParkingFeesRecordDocumentEquality implements Equality<ParkingFeesRecord> {
  const ParkingFeesRecordDocumentEquality();

  @override
  bool equals(ParkingFeesRecord? e1, ParkingFeesRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.timeIn == e2?.timeIn &&
        e1?.timeOut == e2?.timeOut &&
        e1?.totalFees == e2?.totalFees;
  }

  @override
  int hash(ParkingFeesRecord? e) => const ListEquality()
      .hash([e?.userID, e?.timeIn, e?.timeOut, e?.totalFees]);

  @override
  bool isValidKey(Object? o) => o is ParkingFeesRecord;
}
