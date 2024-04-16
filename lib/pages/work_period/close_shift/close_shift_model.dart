import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'close_shift_widget.dart' show CloseShiftWidget;
import 'package:flutter/material.dart';

class CloseShiftModel extends FlutterFlowModel<CloseShiftWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (SaveShift)] action in Button widget.
  ApiCallResponse? apiResultjgp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
