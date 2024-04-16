import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'customer_report_model.dart';
export 'customer_report_model.dart';

class CustomerReportWidget extends StatefulWidget {
  const CustomerReportWidget({super.key});

  @override
  State<CustomerReportWidget> createState() => _CustomerReportWidgetState();
}

class _CustomerReportWidgetState extends State<CustomerReportWidget> {
  late CustomerReportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerReportModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF054D3B),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('HomePage');
                },
                child: const Icon(
                  Icons.keyboard_backspace,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
              Text(
                'Report',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('HomePage');
                      },
                      child: const Icon(
                        Icons.print_outlined,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('HomePage');
                    },
                    child: const Icon(
                      Icons.download_sharp,
                      color: Colors.white,
                      size: 32.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.apiResultc8d =
                    await NawiriPOSGroup.getCustomersCall.call(
                  branchId: FFAppState().branchID,
                );

                setState(() {});
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Customer Report',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final customers =
                              (_model.apiResultc8d?.jsonBody ?? '').toList();
                          return FlutterFlowDataTable<dynamic>(
                            controller: _model.paginatedDataTableController,
                            data: customers,
                            columnsBuilder: (onSortChanged) => [
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'ID',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Name',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Phone',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Balance',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                            dataRowBuilder: (customersItem, customersIndex,
                                    selected, onSelectChanged) =>
                                DataRow(
                              color: MaterialStateProperty.all(
                                customersIndex % 2 == 0
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .primaryBackground,
                              ),
                              cells: [
                                Text(
                                  customersIndex.toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Text(
                                  getJsonField(
                                    customersItem,
                                    r'''$.customer_name''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Text(
                                  getJsonField(
                                    customersItem,
                                    r'''$.customer_phone_no''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                Text(
                                  getJsonField(
                                    customersItem,
                                    r'''$.customer_running_bal''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ].map((c) => DataCell(c)).toList(),
                            ),
                            paginated: true,
                            selectable: false,
                            hidePaginator: true,
                            showFirstLastButtons: false,
                            headingRowHeight: 50.0,
                            dataRowHeight: 45.0,
                            columnSpacing: 10.0,
                            headingRowColor:
                                FlutterFlowTheme.of(context).secondary,
                            borderRadius: BorderRadius.circular(8.0),
                            addHorizontalDivider: true,
                            addTopAndBottomDivider: true,
                            hideDefaultHorizontalDivider: false,
                            horizontalDividerColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            horizontalDividerThickness: 1.0,
                            addVerticalDivider: true,
                            verticalDividerColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            verticalDividerThickness: 1.0,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
