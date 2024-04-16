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
  TextEditingController? refController;
  String? Function(BuildContext, String?)? refControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // State field(s) for charges widget.
  FocusNode? chargesFocusNode;
  TextEditingController? chargesController;
  String? Function(BuildContext, String?)? chargesControllerValidator;
  // State field(s) for dueDate widget.
  FocusNode? dueDateFocusNode;
  TextEditingController? dueDateController;
  String? Function(BuildContext, String?)? dueDateControllerValidator;
  // State field(s) for comments widget.
  FocusNode? commentsFocusNode;
  TextEditingController? commentsController;
  String? Function(BuildContext, String?)? commentsControllerValidator;
  // Stores action output result for [Backend Call - API (SaveBankTransaction)] action in Button widget.
  ApiCallResponse? apiResult0b1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    refFocusNode?.dispose();
    refController?.dispose();

    amountFocusNode?.dispose();
    amountController?.dispose();

    chargesFocusNode?.dispose();
    chargesController?.dispose();

    dueDateFocusNode?.dispose();
    dueDateController?.dispose();

    commentsFocusNode?.dispose();
    commentsController?.dispose();
  }
}
