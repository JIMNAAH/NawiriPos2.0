import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bank_transations_widget.dart' show BankTransationsWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BankTransationsModel extends FlutterFlowModel<BankTransationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for userInput widget.
  FocusNode? userInputFocusNode1;
  TextEditingController? userInputController1;
  String? Function(BuildContext, String?)? userInputController1Validator;
  DateTime? datePicked;
  // State field(s) for userInput widget.
  FocusNode? userInputFocusNode2;
  TextEditingController? userInputController2;
  String? Function(BuildContext, String?)? userInputController2Validator;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userInputFocusNode1?.dispose();
    userInputController1?.dispose();

    userInputFocusNode2?.dispose();
    userInputController2?.dispose();
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
