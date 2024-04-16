import '/components/home_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for HomeNavBar component.
  late HomeNavBarModel homeNavBarModel;

  @override
  void initState(BuildContext context) {
    homeNavBarModel = createModel(context, () => HomeNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homeNavBarModel.dispose();
  }
}
