import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'customer_receipt_widget.dart' show CustomerReceiptWidget;
import 'package:flutter/material.dart';

class CustomerReceiptModel extends FlutterFlowModel<CustomerReceiptWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DdBankingtype widget.
  String? ddBankingtypeValue;
  FormFieldController<String>? ddBankingtypeValueController;
  // State field(s) for banks widget.
  String? banksValue;
  FormFieldController<String>? banksValueController;
  // State field(s) for Trans_Ref widget.
  FocusNode? transRefFocusNode;
  TextEditingController? transRefController;
  String? Function(BuildContext, String?)? transRefControllerValidator;
  // State field(s) for comments widget.
  FocusNode? commentsFocusNode;
  TextEditingController? commentsController;
  String? Function(BuildContext, String?)? commentsControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // Stores action output result for [Backend Call - API (customerTrans)] action in Button widget.
  ApiCallResponse? apiResult0b1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    transRefFocusNode?.dispose();
    transRefController?.dispose();

    commentsFocusNode?.dispose();
    commentsController?.dispose();

    amountFocusNode?.dispose();
    amountController?.dispose();
  }
}
