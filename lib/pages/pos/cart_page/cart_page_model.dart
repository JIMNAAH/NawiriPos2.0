import '/flutter_flow/flutter_flow_util.dart';
import 'cart_page_widget.dart' show CartPageWidget;
import 'package:flutter/material.dart';

class CartPageModel extends FlutterFlowModel<CartPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
