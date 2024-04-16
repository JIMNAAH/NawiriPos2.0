import '/flutter_flow/flutter_flow_util.dart';
import 'banking_widget.dart' show BankingWidget;
import 'package:flutter/material.dart';

class BankingModel extends FlutterFlowModel<BankingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
