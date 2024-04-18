import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'nawiridb',
      'nawiri.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<GetUomsRow>> getUoms() => performGetUoms(
        _database,
      );

  Future<List<GetCategoryRow>> getCategory() => performGetCategory(
        _database,
      );

  Future<List<GetCartRow>> getCart() => performGetCart(
        _database,
      );

  Future<List<GetCartTotalRow>> getCartTotal() => performGetCartTotal(
        _database,
      );

  Future<List<GetCartCountRow>> getCartCount() => performGetCartCount(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future addCart({
    String? productid,
    double? quantity,
    double? sPrice,
    String? productName,
    String? uomcode,
    String? receiptdetailid,
    String? footnote,
  }) =>
      performAddCart(
        _database,
        productid: productid,
        quantity: quantity,
        sPrice: sPrice,
        productName: productName,
        uomcode: uomcode,
        receiptdetailid: receiptdetailid,
        footnote: footnote,
      );

  Future updateCart({
    String? productid,
    double? quantity,
    double? sPrice,
  }) =>
      performUpdateCart(
        _database,
        productid: productid,
        quantity: quantity,
        sPrice: sPrice,
      );

  Future deleteCartItem({
    String? productid,
  }) =>
      performDeleteCartItem(
        _database,
        productid: productid,
      );

  Future deleteCart() => performDeleteCart(
        _database,
      );

  /// END UPDATE QUERY CALLS
}
