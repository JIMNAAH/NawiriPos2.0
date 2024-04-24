import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_page_widget.dart' show CartPageWidget;
import 'package:flutter/material.dart';

class CartPageModel extends FlutterFlowModel<CartPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - SQLite (getCart)] action in IconButton widget.
  List<GetCartRow>? cartDel;
  // Stores action output result for [Backend Call - SQLite (getCart)] action in IconButton widget.
  List<GetCartRow>? getCart;
  // Stores action output result for [Backend Call - SQLite (getCart)] action in IconButton widget.
  List<GetCartRow>? delCart;
  // Stores action output result for [Backend Call - SQLite (getCart)] action in IconButton widget.
  List<GetCartRow>? carts;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
