import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_u_o_m_widget.dart' show ManageUOMWidget;
import 'package:flutter/material.dart';

class ManageUOMModel extends FlutterFlowModel<ManageUOMWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // Stores action output result for [Backend Call - API (EditUoms)] action in Button widget.
  ApiCallResponse? apiResulty7u;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    nameFocusNode?.dispose();
    nameController?.dispose();
  }
}
