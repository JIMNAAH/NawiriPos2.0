import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'manage_expense_widget.dart' show ManageExpenseWidget;
import 'package:flutter/material.dart';

class ManageExpenseModel extends FlutterFlowModel<ManageExpenseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for userInput widget.
  FocusNode? userInputFocusNode;
  TextEditingController? userInputTextController;
  String? Function(BuildContext, String?)? userInputTextControllerValidator;
  // State field(s) for Transactiontype widget.
  String? transactiontypeValue;
  FormFieldController<String>? transactiontypeValueController;
  // State field(s) for Transaction_by widget.
  String? transactionByValue;
  FormFieldController<String>? transactionByValueController;
  // State field(s) for Pay_To widget.
  FocusNode? payToFocusNode;
  TextEditingController? payToTextController;
  String? Function(BuildContext, String?)? payToTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // Stores action output result for [Backend Call - API (SaveExpenses)] action in Button widget.
  ApiCallResponse? apiResultfer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userInputFocusNode?.dispose();
    userInputTextController?.dispose();

    payToFocusNode?.dispose();
    payToTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
