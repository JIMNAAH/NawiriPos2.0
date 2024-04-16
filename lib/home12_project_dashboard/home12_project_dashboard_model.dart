import '/flutter_flow/flutter_flow_util.dart';
import 'home12_project_dashboard_widget.dart' show Home12ProjectDashboardWidget;
import 'package:flutter/material.dart';

class Home12ProjectDashboardModel
    extends FlutterFlowModel<Home12ProjectDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
