import '/components/home_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pos_page_widget.dart' show PosPageWidget;
import 'package:flutter/material.dart';

class PosPageModel extends FlutterFlowModel<PosPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for HomeNavBar component.
  late HomeNavBarModel homeNavBarModel;

  @override
  void initState(BuildContext context) {
    homeNavBarModel = createModel(context, () => HomeNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    homeNavBarModel.dispose();
  }
}
