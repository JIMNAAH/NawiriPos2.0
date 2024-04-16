import '/backend/api_requests/api_calls.dart';
import '/components/report_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reports_widget.dart' show ReportsWidget;
import 'package:flutter/material.dart';

class ReportsModel extends FlutterFlowModel<ReportsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (nwGetBanks)] action in Card widget.
  ApiCallResponse? apiResultht1;
  // Model for ReportNavBar component.
  late ReportNavBarModel reportNavBarModel;

  @override
  void initState(BuildContext context) {
    reportNavBarModel = createModel(context, () => ReportNavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    reportNavBarModel.dispose();
  }
}
