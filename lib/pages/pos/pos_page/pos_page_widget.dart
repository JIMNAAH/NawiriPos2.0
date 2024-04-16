import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/home_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pos_page_model.dart';
export 'pos_page_model.dart';

class PosPageWidget extends StatefulWidget {
  const PosPageWidget({super.key});

  @override
  State<PosPageWidget> createState() => _PosPageWidgetState();
}

class _PosPageWidgetState extends State<PosPageWidget> {
  late PosPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PosPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                'Point Of Sale',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'CartPage',
                    queryParameters: {
                      'quantity': serializeParam(
                        0,
                        ParamType.int,
                      ),
                    }.withoutNulls,
                  );
                },
                child: badges.Badge(
                  badgeContent: Text(
                    FFAppState().cart.length.toString(),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  showBadge: true,
                  shape: badges.BadgeShape.circle,
                  badgeColor: const Color(0xFFF60416),
                  elevation: 4.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: FlutterFlowIconButton(
                    borderColor: const Color(0xFF054D3B),
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0xFF054D3B),
                    icon: const Icon(
                      Icons.shopping_basket,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'CartPage',
                        queryParameters: {
                          'quantity': serializeParam(
                            0,
                            ParamType.int,
                          ),
                        }.withoutNulls,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x34090F13),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(40.0),
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Search...',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 12.0, 12.0, 12.0),
                                      prefixIcon: Icon(
                                        Icons.search_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'All Items',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FutureBuilder<ApiCallResponse>(
                              future: NawiriPOSGroup.getLocationStockCall.call(
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final listViewGetLocationStockResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final allProducts =
                                        listViewGetLocationStockResponse
                                            .jsonBody
                                            .toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: allProducts.length,
                                      itemBuilder: (context, allProductsIndex) {
                                        final allProductsItem =
                                            allProducts[allProductsIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                    .addToCart(CartStruct(
                                                  productName: getJsonField(
                                                    allProductsItem,
                                                    r'''$.location_product_description''',
                                                  ).toString(),
                                                  sPrice: getJsonField(
                                                    allProductsItem,
                                                    r'''$.location_product_sp''',
                                                  ),
                                                  quantity: 1,
                                                  locationProductId:
                                                      getJsonField(
                                                    allProductsItem,
                                                    r'''$.location_product_id''',
                                                  ).toString(),
                                                  uomCode: getJsonField(
                                                    allProductsItem,
                                                    r'''$.uom_code''',
                                                  ).toString(),
                                                  receiptDetailsId: '0',
                                                  footnote: getJsonField(
                                                    allProductsItem,
                                                    r'''$.location_product_id''',
                                                  ).toString(),
                                                ));
                                              });
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
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 50.0,
                                                            height: 50.0,
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
                                                                  'assets/images/category.png',
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  12.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              2.0),
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          allProductsItem,
                                                                          r'''$.location_product_description''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Nunito',
                                                                              color: const Color(0xFF054D3B),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'Ksh. ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          getJsonField(
                                                                        allProductsItem,
                                                                        r'''$.location_product_sp''',
                                                                      ).toString(),
                                                                      style:
                                                                          const TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
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
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderRadius:
                                                                    20.0,
                                                                borderWidth:
                                                                    1.0,
                                                                buttonSize:
                                                                    40.0,
                                                                icon: const Icon(
                                                                  Icons
                                                                      .shopping_cart,
                                                                  color: Color(
                                                                      0xFF054D3B),
                                                                  size: 30.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                        .addToCart(
                                                                            CartStruct(
                                                                      productName:
                                                                          getJsonField(
                                                                        allProductsItem,
                                                                        r'''$.location_product_description''',
                                                                      ).toString(),
                                                                      sPrice:
                                                                          getJsonField(
                                                                        allProductsItem,
                                                                        r'''$.location_product_sp''',
                                                                      ),
                                                                      quantity:
                                                                          1,
                                                                      locationProductId:
                                                                          getJsonField(
                                                                        allProductsItem,
                                                                        r'''$.location_product_id''',
                                                                      ).toString(),
                                                                      uomCode:
                                                                          getJsonField(
                                                                        allProductsItem,
                                                                        r'''$.uom_code''',
                                                                      ).toString(),
                                                                      receiptDetailsId:
                                                                          '0',
                                                                      footnote:
                                                                          getJsonField(
                                                                        allProductsItem,
                                                                        r'''$.location_product_id''',
                                                                      ).toString(),
                                                                    ));
                                                                  });
                                                                },
                                                              ),
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
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.homeNavBarModel,
                  updateCallback: () => setState(() {}),
                  child: const HomeNavBarWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
