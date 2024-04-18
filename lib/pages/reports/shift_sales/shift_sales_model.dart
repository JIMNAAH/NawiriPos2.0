import '/flutter_flow/flutter_flow_util.dart';
import 'shift_sales_widget.dart' show ShiftSalesWidget;
import 'package:flutter/material.dart';

class ShiftSalesModel extends FlutterFlowModel<ShiftSalesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
