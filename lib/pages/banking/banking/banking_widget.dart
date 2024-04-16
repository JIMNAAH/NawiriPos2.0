import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'banking_model.dart';
export 'banking_model.dart';

class BankingWidget extends StatefulWidget {
  const BankingWidget({super.key});

  @override
  State<BankingWidget> createState() => _BankingWidgetState();
}

class _BankingWidgetState extends State<BankingWidget> {
  late BankingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BankingModel());

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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.keyboard_backspace,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('HomePage');
            },
          ),
          title: Text(
            'Banking',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'Manage_Bank',
                              queryParameters: {
                                'bankName': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'bankAccNo': serializeParam(
                                  0,
                                  ParamType.int,
                                ),
                                'accManager': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'accDetails': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'bankId': serializeParam(
                                  '0',
                                  ParamType.String,
                                ),
                                'bankBalance': serializeParam(
                                  0.0,
                                  ParamType.double,
                                ),
                                'credit': serializeParam(
                                  0.0,
                                  ParamType.double,
                                ),
                                'debit': serializeParam(
                                  0.0,
                                  ParamType.double,
                                ),
                                'branchId': serializeParam(
                                  10501,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: 'Add Bank',
                          options: FFButtonOptions(
                            width: 190.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF054D3B),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Banks',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FutureBuilder<ApiCallResponse>(
                            future: NawiriPOSGroup.nwGetBanksCall.call(
                              branchId: FFAppState().branchID,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final listViewNwGetBanksResponse = snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final allBanks = listViewNwGetBanksResponse
                                      .jsonBody
                                      .toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: allBanks.length,
                                    itemBuilder: (context, allBanksIndex) {
                                      final allBanksItem =
                                          allBanks[allBanksIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'Bank_Transations',
                                              queryParameters: {
                                                'bankID': serializeParam(
                                                  getJsonField(
                                                    allBanksItem,
                                                    r'''$.bank_id''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: const Color(0xFFF5F5F5),
                                            elevation: 4.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Container(
                                              height: 90.0,
                                              decoration: const BoxDecoration(),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 30.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xFFF5F5F5),
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/bank.png',
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(2.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  allBanksItem,
                                                                  r'''$.bank_name''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      color: const Color(
                                                                          0xFF054D3B),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(2.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  allBanksItem,
                                                                  r'''$.account_details''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              getJsonField(
                                                                allBanksItem,
                                                                r'''$.bank_running_bal''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .black,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FlutterFlowIconButton(
                                                                borderColor: const Color(
                                                                    0xFFF5F5F5),
                                                                borderRadius:
                                                                    30.0,
                                                                borderWidth:
                                                                    0.0,
                                                                buttonSize:
                                                                    40.0,
                                                                fillColor: const Color(
                                                                    0xFFF5F5F5),
                                                                icon: Icon(
                                                                  Icons
                                                                      .edit_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 24.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    'Manage_Bank',
                                                                    queryParameters:
                                                                        {
                                                                      'bankName':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          allBanksItem,
                                                                          r'''$.bank_name''',
                                                                        ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'bankAccNo':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          allBanksItem,
                                                                          r'''$.bank_acc_no''',
                                                                        ),
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                      'accManager':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          allBanksItem,
                                                                          r'''$.account_manager''',
                                                                        ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'accDetails':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          allBanksItem,
                                                                          r'''$.account_details''',
                                                                        ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'bankId':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          allBanksItem,
                                                                          r'''$.bank_id''',
                                                                        ).toString(),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'bankBalance':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          allBanksItem,
                                                                          r'''$.bank_running_bal''',
                                                                        ),
                                                                        ParamType
                                                                            .double,
                                                                      ),
                                                                      'credit':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          allBanksItem,
                                                                          r'''$.total_credit''',
                                                                        ),
                                                                        ParamType
                                                                            .double,
                                                                      ),
                                                                      'debit':
                                                                          serializeParam(
                                                                        getJsonField(
                                                                          allBanksItem,
                                                                          r'''$.total_debit''',
                                                                        ),
                                                                        ParamType
                                                                            .double,
                                                                      ),
                                                                      'branchId':
                                                                          serializeParam(
                                                                        10501,
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
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
