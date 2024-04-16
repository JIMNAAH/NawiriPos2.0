import '/flutter_flow/flutter_flow_util.dart';
import 'verification_widget.dart' show VerificationWidget;
import 'package:flutter/material.dart';

class VerificationModel extends FlutterFlowModel<VerificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
