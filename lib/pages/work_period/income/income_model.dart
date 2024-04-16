import '/flutter_flow/flutter_flow_util.dart';
import 'income_widget.dart' show IncomeWidget;
import 'package:flutter/material.dart';

class IncomeModel extends FlutterFlowModel<IncomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
