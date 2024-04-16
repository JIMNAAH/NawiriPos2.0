import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_category_widget.dart' show ManageCategoryWidget;
import 'package:flutter/material.dart';

class ManageCategoryModel extends FlutterFlowModel<ManageCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for categoryCount widget.
  FocusNode? categoryCountFocusNode;
  TextEditingController? categoryCountController;
  String? Function(BuildContext, String?)? categoryCountControllerValidator;
  // State field(s) for r_margin widget.
  FocusNode? rMarginFocusNode;
  TextEditingController? rMarginController;
  String? Function(BuildContext, String?)? rMarginControllerValidator;
  // State field(s) for w_margin widget.
  FocusNode? wMarginFocusNode;
  TextEditingController? wMarginController;
  String? Function(BuildContext, String?)? wMarginControllerValidator;
  // Stores action output result for [Backend Call - API (Savecategory)] action in Button widget.
  ApiCallResponse? apiResultqhs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    categoryCountFocusNode?.dispose();
    categoryCountController?.dispose();

    rMarginFocusNode?.dispose();
    rMarginController?.dispose();

    wMarginFocusNode?.dispose();
    wMarginController?.dispose();
  }
}
