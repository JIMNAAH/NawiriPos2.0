import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'open_shift_widget.dart' show OpenShiftWidget;
import 'package:flutter/material.dart';

class OpenShiftModel extends FlutterFlowModel<OpenShiftWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for userInput widget.
  FocusNode? userInputFocusNode;
  TextEditingController? userInputTextController;
  String? Function(BuildContext, String?)? userInputTextControllerValidator;
  // State field(s) for shiftDescription widget.
  FocusNode? shiftDescriptionFocusNode;
  TextEditingController? shiftDescriptionTextController;
  String? Function(BuildContext, String?)?
      shiftDescriptionTextControllerValidator;
  // State field(s) for Till widget.
  FocusNode? tillFocusNode;
  TextEditingController? tillTextController;
  String? Function(BuildContext, String?)? tillTextControllerValidator;
  // State field(s) for openingFloat widget.
  FocusNode? openingFloatFocusNode;
  TextEditingController? openingFloatTextController;
  String? Function(BuildContext, String?)? openingFloatTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (SaveShift)] action in Button widget.
  ApiCallResponse? apiResultick;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userInputFocusNode?.dispose();
    userInputTextController?.dispose();

    shiftDescriptionFocusNode?.dispose();
    shiftDescriptionTextController?.dispose();

    tillFocusNode?.dispose();
    tillTextController?.dispose();

    openingFloatFocusNode?.dispose();
    openingFloatTextController?.dispose();
  }
}
