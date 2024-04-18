import 'package:sqflite/sqflite.dart';

/// BEGIN ADDCART
Future performAddCart(
  Database database, {
  String? productid,
  double? quantity,
  double? sPrice,
  String? productName,
  String? uomcode,
  String? receiptdetailid,
  String? footnote,
}) {
  final query = '''
INSERT INTO cart (location_product_id,quantity,sPrice,productName,uom_code,receipt_detail_id,footnote) VALUES
('$productid',$quantity,$sPrice,'$productName','$uomcode','$receiptdetailid','$footnote')
''';
  return database.rawQuery(query);
}

/// END ADDCART

/// BEGIN UPDATECART
Future performUpdateCart(
  Database database, {
  String? productid,
  double? quantity,
  double? sPrice,
}) {
  final query = '''
UPDATE cart SET quantity=quantity+$quantity ,sPrice = $sPrice WHERE location_product_id='$productid'
''';
  return database.rawQuery(query);
}

/// END UPDATECART

/// BEGIN DELETECARTITEM
Future performDeleteCartItem(
  Database database, {
  String? productid,
}) {
  final query = '''
DELETE FROM  cart WHERE location_product_id='$productid'
''';
  return database.rawQuery(query);
}

/// END DELETECARTITEM

/// BEGIN DELETECART
Future performDeleteCart(
  Database database,
) {
  const query = '''
DELETE FROM  cart
''';
  return database.rawQuery(query);
}

/// END DELETECART
