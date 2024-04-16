import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'manage_income_widget.dart' show ManageIncomeWidget;
import 'package:flutter/material.dart';

class ManageIncomeModel extends FlutterFlowModel<ManageIncomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for userInput widget.
  FocusNode? userInputFocusNode;
  TextEditingController? userInputController;
  String? Function(BuildContext, String?)? userInputControllerValidator;
  // State field(s) for Transactiontype widget.
  String? transactiontypeValue;
  FormFieldController<String>? transactiontypeValueController;
  // State field(s) for Transaction_by widget.
  String? transactionByValue;
  FormFieldController<String>? transactionByValueController;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // Stores action output result for [Backend Call - API (SaveExpenses)] action in Button widget.
  ApiCallResponse? apiResultfer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userInputFocusNode?.dispose();
    userInputController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    amountFocusNode?.dispose();
    amountController?.dispose();
  }
}
