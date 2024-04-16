// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartStruct extends BaseStruct {
  CartStruct({
    String? productName,
    int? quantity,
    double? sPrice,
    String? locationProductId,
    String? uomCode,
    String? receiptDetailsId,
    String? footnote,
    bool? isTapped,
  })  : _productName = productName,
        _quantity = quantity,
        _sPrice = sPrice,
        _locationProductId = locationProductId,
        _uomCode = uomCode,
        _receiptDetailsId = receiptDetailsId,
        _footnote = footnote,
        _isTapped = isTapped;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;
  bool hasProductName() => _productName != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "sPrice" field.
  double? _sPrice;
  double get sPrice => _sPrice ?? 0.0;
  set sPrice(double? val) => _sPrice = val;
  void incrementSPrice(double amount) => _sPrice = sPrice + amount;
  bool hasSPrice() => _sPrice != null;

  // "location_product_id" field.
  String? _locationProductId;
  String get locationProductId => _locationProductId ?? '';
  set locationProductId(String? val) => _locationProductId = val;
  bool hasLocationProductId() => _locationProductId != null;

  // "uom_code" field.
  String? _uomCode;
  String get uomCode => _uomCode ?? '';
  set uomCode(String? val) => _uomCode = val;
  bool hasUomCode() => _uomCode != null;

  // "receipt_details_id" field.
  String? _receiptDetailsId;
  String get receiptDetailsId => _receiptDetailsId ?? '';
  set receiptDetailsId(String? val) => _receiptDetailsId = val;
  bool hasReceiptDetailsId() => _receiptDetailsId != null;

  // "footnote" field.
  String? _footnote;
  String get footnote => _footnote ?? '';
  set footnote(String? val) => _footnote = val;
  bool hasFootnote() => _footnote != null;

  // "isTapped" field.
  bool? _isTapped;
  bool get isTapped => _isTapped ?? true;
  set isTapped(bool? val) => _isTapped = val;
  bool hasIsTapped() => _isTapped != null;

  static CartStruct fromMap(Map<String, dynamic> data) => CartStruct(
        productName: data['productName'] as String?,
        quantity: castToType<int>(data['quantity']),
        sPrice: castToType<double>(data['sPrice']),
        locationProductId: data['location_product_id'] as String?,
        uomCode: data['uom_code'] as String?,
        receiptDetailsId: data['receipt_details_id'] as String?,
        footnote: data['footnote'] as String?,
        isTapped: data['isTapped'] as bool?,
      );

  static CartStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'productName': _productName,
        'quantity': _quantity,
        'sPrice': _sPrice,
        'location_product_id': _locationProductId,
        'uom_code': _uomCode,
        'receipt_details_id': _receiptDetailsId,
        'footnote': _footnote,
        'isTapped': _isTapped,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'sPrice': serializeParam(
          _sPrice,
          ParamType.double,
        ),
        'location_product_id': serializeParam(
          _locationProductId,
          ParamType.String,
        ),
        'uom_code': serializeParam(
          _uomCode,
          ParamType.String,
        ),
        'receipt_details_id': serializeParam(
          _receiptDetailsId,
          ParamType.String,
        ),
        'footnote': serializeParam(
          _footnote,
          ParamType.String,
        ),
        'isTapped': serializeParam(
          _isTapped,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CartStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartStruct(
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        sPrice: deserializeParam(
          data['sPrice'],
          ParamType.double,
          false,
        ),
        locationProductId: deserializeParam(
          data['location_product_id'],
          ParamType.String,
          false,
        ),
        uomCode: deserializeParam(
          data['uom_code'],
          ParamType.String,
          false,
        ),
        receiptDetailsId: deserializeParam(
          data['receipt_details_id'],
          ParamType.String,
          false,
        ),
        footnote: deserializeParam(
          data['footnote'],
          ParamType.String,
          false,
        ),
        isTapped: deserializeParam(
          data['isTapped'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartStruct &&
        productName == other.productName &&
        quantity == other.quantity &&
        sPrice == other.sPrice &&
        locationProductId == other.locationProductId &&
        uomCode == other.uomCode &&
        receiptDetailsId == other.receiptDetailsId &&
        footnote == other.footnote &&
        isTapped == other.isTapped;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productName,
        quantity,
        sPrice,
        locationProductId,
        uomCode,
        receiptDetailsId,
        footnote,
        isTapped
      ]);
}

CartStruct createCartStruct({
  String? productName,
  int? quantity,
  double? sPrice,
  String? locationProductId,
  String? uomCode,
  String? receiptDetailsId,
  String? footnote,
  bool? isTapped,
}) =>
    CartStruct(
      productName: productName,
      quantity: quantity,
      sPrice: sPrice,
      locationProductId: locationProductId,
      uomCode: uomCode,
      receiptDetailsId: receiptDetailsId,
      footnote: footnote,
      isTapped: isTapped,
    );
