import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'supplier_trans_widget.dart' show SupplierTransWidget;
import 'package:flutter/material.dart';

class SupplierTransModel extends FlutterFlowModel<SupplierTransWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for userInput widget.
  FocusNode? userInputFocusNode1;
  TextEditingController? userInputTextController1;
  String? Function(BuildContext, String?)? userInputTextController1Validator;
  DateTime? datePicked;
  // State field(s) for userInput widget.
  FocusNode? userInputFocusNode2;
  TextEditingController? userInputTextController2;
  String? Function(BuildContext, String?)? userInputTextController2Validator;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userInputFocusNode1?.dispose();
    userInputTextController1?.dispose();

    userInputFocusNode2?.dispose();
    userInputTextController2?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
