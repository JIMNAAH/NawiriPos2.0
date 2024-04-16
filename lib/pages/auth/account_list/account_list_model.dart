import '/flutter_flow/flutter_flow_util.dart';
import 'account_list_widget.dart' show AccountListWidget;
import 'package:flutter/material.dart';

class AccountListModel extends FlutterFlowModel<AccountListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
