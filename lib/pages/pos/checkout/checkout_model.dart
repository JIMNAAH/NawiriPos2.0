import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/material.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for userInput widget.
  FocusNode? userInputFocusNode;
  TextEditingController? userInputController;
  String? Function(BuildContext, String?)? userInputControllerValidator;
  // State field(s) for mpesa widget.
  FocusNode? mpesaFocusNode;
  TextEditingController? mpesaController;
  String? Function(BuildContext, String?)? mpesaControllerValidator;
  // State field(s) for bank widget.
  FocusNode? bankFocusNode;
  TextEditingController? bankController;
  String? Function(BuildContext, String?)? bankControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (GetCustomers)] action in DropDown widget.
  ApiCallResponse? apiResultg98;
  // Stores action output result for [Backend Call - API (PostReceipt)] action in Button widget.
  ApiCallResponse? apiResultcni;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userInputFocusNode?.dispose();
    userInputController?.dispose();

    mpesaFocusNode?.dispose();
    mpesaController?.dispose();

    bankFocusNode?.dispose();
    bankController?.dispose();
  }
}
