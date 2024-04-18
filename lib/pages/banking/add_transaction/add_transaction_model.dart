import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_transaction_widget.dart' show AddTransactionWidget;
import 'package:flutter/material.dart';

class AddTransactionModel extends FlutterFlowModel<AddTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DdBankingtype widget.
  String? ddBankingtypeValue;
  FormFieldController<String>? ddBankingtypeValueController;
  // State field(s) for ref widget.
  FocusNode? refFocusNode;
  TextEditingController? refTextController;
  String? Function(BuildContext, String?)? refTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for charges widget.
  FocusNode? chargesFocusNode;
  TextEditingController? chargesTextController;
  String? Function(BuildContext, String?)? chargesTextControllerValidator;
  // State field(s) for dueDate widget.
  FocusNode? dueDateFocusNode;
  TextEditingController? dueDateTextController;
  String? Function(BuildContext, String?)? dueDateTextControllerValidator;
  // State field(s) for comments widget.
  FocusNode? commentsFocusNode;
  TextEditingController? commentsTextController;
  String? Function(BuildContext, String?)? commentsTextControllerValidator;
  // Stores action output result for [Backend Call - API (SaveBankTransaction)] action in Button widget.
  ApiCallResponse? apiResult0b1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    refFocusNode?.dispose();
    refTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    chargesFocusNode?.dispose();
    chargesTextController?.dispose();

    dueDateFocusNode?.dispose();
    dueDateTextController?.dispose();

    commentsFocusNode?.dispose();
    commentsTextController?.dispose();
  }
}
