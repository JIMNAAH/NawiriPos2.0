import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "location_product_id" field.
  String? _locationProductId;
  String get locationProductId => _locationProductId ?? '';
  bool hasLocationProductId() => _locationProductId != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  bool hasQuantity() => _quantity != null;

  // "sPrice" field.
  double? _sPrice;
  double get sPrice => _sPrice ?? 0.0;
  bool hasSPrice() => _sPrice != null;

  // "uom_code" field.
  String? _uomCode;
  String get uomCode => _uomCode ?? '';
  bool hasUomCode() => _uomCode != null;

  // "receipt_detail_id" field.
  String? _receiptDetailId;
  String get receiptDetailId => _receiptDetailId ?? '';
  bool hasReceiptDetailId() => _receiptDetailId != null;

  // "footnote" field.
  String? _footnote;
  String get footnote => _footnote ?? '';
  bool hasFootnote() => _footnote != null;

  // "isTapped" field.
  bool? _isTapped;
  bool get isTapped => _isTapped ?? false;
  bool hasIsTapped() => _isTapped != null;

  void _initializeFields() {
    _locationProductId = snapshotData['location_product_id'] as String?;
    _productName = snapshotData['productName'] as String?;
    _quantity = castToType<double>(snapshotData['quantity']);
    _sPrice = castToType<double>(snapshotData['sPrice']);
    _uomCode = snapshotData['uom_code'] as String?;
    _receiptDetailId = snapshotData['receipt_detail_id'] as String?;
    _footnote = snapshotData['footnote'] as String?;
    _isTapped = snapshotData['isTapped'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? locationProductId,
  String? productName,
  double? quantity,
  double? sPrice,
  String? uomCode,
  String? receiptDetailId,
  String? footnote,
  bool? isTapped,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location_product_id': locationProductId,
      'productName': productName,
      'quantity': quantity,
      'sPrice': sPrice,
      'uom_code': uomCode,
      'receipt_detail_id': receiptDetailId,
      'footnote': footnote,
      'isTapped': isTapped,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.locationProductId == e2?.locationProductId &&
        e1?.productName == e2?.productName &&
        e1?.quantity == e2?.quantity &&
        e1?.sPrice == e2?.sPrice &&
        e1?.uomCode == e2?.uomCode &&
        e1?.receiptDetailId == e2?.receiptDetailId &&
        e1?.footnote == e2?.footnote &&
        e1?.isTapped == e2?.isTapped;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.locationProductId,
        e?.productName,
        e?.quantity,
        e?.sPrice,
        e?.uomCode,
        e?.receiptDetailId,
        e?.footnote,
        e?.isTapped
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
