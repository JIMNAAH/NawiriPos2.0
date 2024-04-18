import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_category_widget.dart' show ManageCategoryWidget;
import 'package:flutter/material.dart';

class ManageCategoryModel extends FlutterFlowModel<ManageCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for categoryCount widget.
  FocusNode? categoryCountFocusNode;
  TextEditingController? categoryCountTextController;
  String? Function(BuildContext, String?)? categoryCountTextControllerValidator;
  // State field(s) for r_margin widget.
  FocusNode? rMarginFocusNode;
  TextEditingController? rMarginTextController;
  String? Function(BuildContext, String?)? rMarginTextControllerValidator;
  // State field(s) for w_margin widget.
  FocusNode? wMarginFocusNode;
  TextEditingController? wMarginTextController;
  String? Function(BuildContext, String?)? wMarginTextControllerValidator;
  // Stores action output result for [Backend Call - API (Savecategory)] action in Button widget.
  ApiCallResponse? apiResultqhs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    categoryCountFocusNode?.dispose();
    categoryCountTextController?.dispose();

    rMarginFocusNode?.dispose();
    rMarginTextController?.dispose();

    wMarginFocusNode?.dispose();
    wMarginTextController?.dispose();
  }
}
