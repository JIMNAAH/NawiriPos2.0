import '/components/setting_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_widget.dart' show SettingWidget;
import 'package:flutter/material.dart';

class SettingModel extends FlutterFlowModel<SettingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingNavbar component.
  late SettingNavbarModel settingNavbarModel;

  @override
  void initState(BuildContext context) {
    settingNavbarModel = createModel(context, () => SettingNavbarModel());
  }

  @override
  void dispose() {
    settingNavbarModel.dispose();
  }
}
