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
  TextEditingController? userInputTextController;
  String? Function(BuildContext, String?)? userInputTextControllerValidator;
  // State field(s) for mpesa widget.
  FocusNode? mpesaFocusNode;
  TextEditingController? mpesaTextController;
  String? Function(BuildContext, String?)? mpesaTextControllerValidator;
  // State field(s) for bank widget.
  FocusNode? bankFocusNode;
  TextEditingController? bankTextController;
  String? Function(BuildContext, String?)? bankTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (GetCustomers)] action in DropDown widget.
  ApiCallResponse? apiResultg98;
  // State field(s) for onAccount widget.
  FocusNode? onAccountFocusNode;
  TextEditingController? onAccountTextController;
  String? Function(BuildContext, String?)? onAccountTextControllerValidator;
  // Stores action output result for [Backend Call - API (PostReceipt)] action in Button widget.
  ApiCallResponse? apiResultcni;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userInputFocusNode?.dispose();
    userInputTextController?.dispose();

    mpesaFocusNode?.dispose();
    mpesaTextController?.dispose();

    bankFocusNode?.dispose();
    bankTextController?.dispose();

    onAccountFocusNode?.dispose();
    onAccountTextController?.dispose();
  }
}
