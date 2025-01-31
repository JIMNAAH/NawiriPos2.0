import '/backend/sqlite/sqlite_manager.dart';
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
  // Stores action output result for [Backend Call - SQLite (getCartCount)] action in IconButton widget.
  List<GetCartCountRow>? cartCount2;
  // Stores action output result for [Backend Call - SQLite (getCart)] action in IconButton widget.
  List<GetCartRow>? getAdd;
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
