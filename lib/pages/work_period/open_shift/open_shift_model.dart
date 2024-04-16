import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'open_shift_widget.dart' show OpenShiftWidget;
import 'package:flutter/material.dart';

class OpenShiftModel extends FlutterFlowModel<OpenShiftWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for userInput widget.
  FocusNode? userInputFocusNode;
  TextEditingController? userInputController;
  String? Function(BuildContext, String?)? userInputControllerValidator;
  // State field(s) for shiftDescription widget.
  FocusNode? shiftDescriptionFocusNode;
  TextEditingController? shiftDescriptionController;
  String? Function(BuildContext, String?)? shiftDescriptionControllerValidator;
  // State field(s) for Till widget.
  FocusNode? tillFocusNode;
  TextEditingController? tillController;
  String? Function(BuildContext, String?)? tillControllerValidator;
  // State field(s) for openingFloat widget.
  FocusNode? openingFloatFocusNode;
  TextEditingController? openingFloatController;
  String? Function(BuildContext, String?)? openingFloatControllerValidator;
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
    userInputController?.dispose();

    shiftDescriptionFocusNode?.dispose();
    shiftDescriptionController?.dispose();

    tillFocusNode?.dispose();
    tillController?.dispose();

    openingFloatFocusNode?.dispose();
    openingFloatController?.dispose();
  }
}
