import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETUOMS
Future<List<GetUomsRow>> performGetUoms(
  Database database,
) {
  const query = '''
select * from uom
''';
  return _readQuery(database, query, (d) => GetUomsRow(d));
}

class GetUomsRow extends SqliteRow {
  GetUomsRow(super.data);
}

/// END GETUOMS

/// BEGIN GETCATEGORY
Future<List<GetCategoryRow>> performGetCategory(
  Database database,
) {
  const query = '''
select * from category
''';
  return _readQuery(database, query, (d) => GetCategoryRow(d));
}

class GetCategoryRow extends SqliteRow {
  GetCategoryRow(super.data);
}

/// END GETCATEGORY

/// BEGIN GETCART
Future<List<GetCartRow>> performGetCart(
  Database database,
) {
  const query = '''
select location_product_id  as productid,quantity,sPrice,productName,uom_code as uomcode,receipt_detail_id as receiptdetailid ,footnote from cart
''';
  return _readQuery(database, query, (d) => GetCartRow(d));
}

class GetCartRow extends SqliteRow {
  GetCartRow(super.data);

  String get productid => data['productid'] as String;
  int get quantity => data['quantity'] as int;
  double get sPrice => data['sPrice'] as double;
  String get productName => data['productName'] as String;
  String get uomcode => data['uomcode'] as String;
  String get receiptdetailid => data['receiptdetailid'] as String;
  String get footnote => data['footnote'] as String;
}

/// END GETCART

/// BEGIN GETCARTTOTAL
Future<List<GetCartTotalRow>> performGetCartTotal(
  Database database,
) {
  const query = '''
SELECT sum(quantity * sPrice) AS Total FROM cart
''';
  return _readQuery(database, query, (d) => GetCartTotalRow(d));
}

class GetCartTotalRow extends SqliteRow {
  GetCartTotalRow(super.data);

  double? get total => data['Total'] as double?;
}

/// END GETCARTTOTAL

/// BEGIN GETCARTCOUNT
Future<List<GetCartCountRow>> performGetCartCount(
  Database database,
) {
  const query = '''
select count(*) as CartCount  from cart
''';
  return _readQuery(database, query, (d) => GetCartCountRow(d));
}

class GetCartCountRow extends SqliteRow {
  GetCartCountRow(super.data);

  int get cartCount => data['CartCount'] as int;
}

/// END GETCARTCOUNT
