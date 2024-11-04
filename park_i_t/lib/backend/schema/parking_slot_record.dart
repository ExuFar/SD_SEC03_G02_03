import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParkingSlotRecord extends FirestoreRecord {
  ParkingSlotRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "SlotNumber" field.
  List<String>? _slotNumber;
  List<String> get slotNumber => _slotNumber ?? const [];
  bool hasSlotNumber() => _slotNumber != null;

  // "SlotStatus" field.
  List<bool>? _slotStatus;
  List<bool> get slotStatus => _slotStatus ?? const [];
  bool hasSlotStatus() => _slotStatus != null;

  // "total_slot" field.
  DocumentReference? _totalSlot;
  DocumentReference? get totalSlot => _totalSlot;
  bool hasTotalSlot() => _totalSlot != null;

  // "totalslot" field.
  int? _totalslot;
  int get totalslot => _totalslot ?? 0;
  bool hasTotalslot() => _totalslot != null;

  void _initializeFields() {
    _slotNumber = getDataList(snapshotData['SlotNumber']);
    _slotStatus = getDataList(snapshotData['SlotStatus']);
    _totalSlot = snapshotData['total_slot'] as DocumentReference?;
    _totalslot = castToType<int>(snapshotData['totalslot']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parking_slot');

  static Stream<ParkingSlotRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParkingSlotRecord.fromSnapshot(s));

  static Future<ParkingSlotRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParkingSlotRecord.fromSnapshot(s));

  static ParkingSlotRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParkingSlotRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParkingSlotRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParkingSlotRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParkingSlotRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParkingSlotRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParkingSlotRecordData({
  DocumentReference? totalSlot,
  int? totalslot,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'total_slot': totalSlot,
      'totalslot': totalslot,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParkingSlotRecordDocumentEquality implements Equality<ParkingSlotRecord> {
  const ParkingSlotRecordDocumentEquality();

  @override
  bool equals(ParkingSlotRecord? e1, ParkingSlotRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.slotNumber, e2?.slotNumber) &&
        listEquality.equals(e1?.slotStatus, e2?.slotStatus) &&
        e1?.totalSlot == e2?.totalSlot &&
        e1?.totalslot == e2?.totalslot;
  }

  @override
  int hash(ParkingSlotRecord? e) => const ListEquality()
      .hash([e?.slotNumber, e?.slotStatus, e?.totalSlot, e?.totalslot]);

  @override
  bool isValidKey(Object? o) => o is ParkingSlotRecord;
}
