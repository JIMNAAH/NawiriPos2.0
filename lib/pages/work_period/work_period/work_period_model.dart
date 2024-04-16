import '/flutter_flow/flutter_flow_util.dart';
import 'work_period_widget.dart' show WorkPeriodWidget;
import 'package:flutter/material.dart';

class WorkPeriodModel extends FlutterFlowModel<WorkPeriodWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
