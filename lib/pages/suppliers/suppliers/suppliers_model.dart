import '/flutter_flow/flutter_flow_util.dart';
import 'suppliers_widget.dart' show SuppliersWidget;
import 'package:flutter/material.dart';

class SuppliersModel extends FlutterFlowModel<SuppliersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
