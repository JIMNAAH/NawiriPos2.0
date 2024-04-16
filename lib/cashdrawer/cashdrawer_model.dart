import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cashdrawer_widget.dart' show CashdrawerWidget;
import 'package:flutter/material.dart';

class CashdrawerModel extends FlutterFlowModel<CashdrawerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
