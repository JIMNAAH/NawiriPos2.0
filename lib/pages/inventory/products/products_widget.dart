import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'products_model.dart';
export 'products_model.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({super.key});

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  late ProductsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductsModel());

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
              context.pushNamed('Inventory');
            },
          ),
          title: Text(
            'Products',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Nunito',
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
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
                              'Manage_Product',
                              queryParameters: {
                                'productName': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'productDesc': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'retailPrice': serializeParam(
                                  0.0,
                                  ParamType.double,
                                ),
                                'wholesalePrice': serializeParam(
                                  0.0,
                                  ParamType.double,
                                ),
                                'category': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'uom': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'productId': serializeParam(
                                  '0',
                                  ParamType.String,
                                ),
                                'quantity': serializeParam(
                                  0,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: 'Add Product',
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
                    children: [
                      Text(
                        'Products',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: Colors.black,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FutureBuilder<ApiCallResponse>(
                        future: NawiriPOSGroup.getProductsCall.call(
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
                          final listViewGetProductsResponse = snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final products =
                                  listViewGetProductsResponse.jsonBody.toList();
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: products.length,
                                itemBuilder: (context, productsIndex) {
                                  final productsItem = products[productsIndex];
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFF5F5F5),
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/category.png',
                                                        ).image,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(12.0),
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
                                                            const EdgeInsets.all(2.0),
                                                        child: Text(
                                                          getJsonField(
                                                            productsItem,
                                                            r'''$.location_product_description''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                            const EdgeInsets.all(2.0),
                                                        child: Text(
                                                          getJsonField(
                                                            productsItem,
                                                            r'''$.location_product_quantity''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Nunito',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                5.0, 0.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      borderRadius: 20.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      icon: Icon(
                                                        Icons.edit,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          'Manage_Product',
                                                          queryParameters: {
                                                            'productName':
                                                                serializeParam(
                                                              getJsonField(
                                                                productsItem,
                                                                r'''$.location_product_description''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'productDesc':
                                                                serializeParam(
                                                              '',
                                                              ParamType.String,
                                                            ),
                                                            'retailPrice':
                                                                serializeParam(
                                                              getJsonField(
                                                                productsItem,
                                                                r'''$.location_product_sp''',
                                                              ),
                                                              ParamType.double,
                                                            ),
                                                            'wholesalePrice':
                                                                serializeParam(
                                                              getJsonField(
                                                                productsItem,
                                                                r'''$.location_product_bp''',
                                                              ),
                                                              ParamType.double,
                                                            ),
                                                            'category':
                                                                serializeParam(
                                                              getJsonField(
                                                                productsItem,
                                                                r'''$.category_id''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'uom':
                                                                serializeParam(
                                                              getJsonField(
                                                                productsItem,
                                                                r'''$.uom_code''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'productId':
                                                                serializeParam(
                                                              getJsonField(
                                                                productsItem,
                                                                r'''$.location_product_id''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'quantity':
                                                                serializeParam(
                                                              0,
                                                              ParamType.int,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
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
            ),
          ),
        ),
      ),
    );
  }
}
