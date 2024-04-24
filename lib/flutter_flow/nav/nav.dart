import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';


import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    'assets/images/nawiri-logo_2.png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : const SplashWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset(
                        'assets/images/nawiri-logo_2.png',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : const SplashWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'Splash',
          path: '/splash',
          builder: (context, params) => const SplashWidget(),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => CreateAccountWidget(
            userID: params.getParam(
              'userID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'CreateAccount1',
          path: '/createAccount1',
          builder: (context, params) => CreateAccount1Widget(
            companyID: params.getParam(
              'companyID',
              ParamType.int,
            ),
            branchID: params.getParam(
              'branchID',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'Verification',
          path: '/verification',
          builder: (context, params) => const VerificationWidget(),
        ),
        FFRoute(
          name: 'VerificationCode',
          path: '/verificationCode',
          builder: (context, params) => const VerificationCodeWidget(),
        ),
        FFRoute(
          name: 'PosPage',
          path: '/posPage',
          builder: (context, params) => const PosPageWidget(),
        ),
        FFRoute(
          name: 'Customer',
          path: '/customer',
          builder: (context, params) => const CustomerWidget(),
        ),
        FFRoute(
          name: 'Suppliers',
          path: '/suppliers',
          builder: (context, params) => const SuppliersWidget(),
        ),
        FFRoute(
          name: 'CartPage',
          path: '/cartPage',
          builder: (context, params) => CartPageWidget(
            quantity: params.getParam(
              'quantity',
              ParamType.int,
            ),
            productName: params.getParam(
              'productName',
              ParamType.String,
            ),
            items: params.getParam<dynamic>(
              'items',
              ParamType.JSON,
              true,
            ),
          ),
        ),
        FFRoute(
          name: 'Banking',
          path: '/banking',
          builder: (context, params) => const BankingWidget(),
        ),
        FFRoute(
          name: 'Add_Transaction',
          path: '/addTransaction',
          builder: (context, params) => AddTransactionWidget(
            bankID: params.getParam(
              'bankID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Inventory',
          path: '/inventory',
          builder: (context, params) => const InventoryWidget(),
        ),
        FFRoute(
          name: 'Checkout',
          path: '/checkout',
          builder: (context, params) => const CheckoutWidget(),
        ),
        FFRoute(
          name: 'Categories',
          path: '/categories',
          builder: (context, params) => const CategoriesWidget(),
        ),
        FFRoute(
          name: 'Manage_Category',
          path: '/manageCategory',
          builder: (context, params) => ManageCategoryWidget(
            categoryName: params.getParam(
              'categoryName',
              ParamType.String,
            ),
            categoryID: params.getParam(
              'categoryID',
              ParamType.String,
            ),
            categoryCount: params.getParam(
              'categoryCount',
              ParamType.int,
            ),
            retailMargin: params.getParam(
              'retailMargin',
              ParamType.double,
            ),
            wholesaleMargin: params.getParam(
              'wholesaleMargin',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'Products',
          path: '/products',
          builder: (context, params) => const ProductsWidget(),
        ),
        FFRoute(
          name: 'UnitOfMeasurement',
          path: '/unitOfMeasurement',
          builder: (context, params) => const UnitOfMeasurementWidget(),
        ),
        FFRoute(
          name: 'Manage_UOM',
          path: '/manageUOM',
          builder: (context, params) => ManageUOMWidget(
            uomName: params.getParam(
              'uomName',
              ParamType.String,
            ),
            uomDescription: params.getParam(
              'uomDescription',
              ParamType.String,
            ),
            uomID: params.getParam(
              'uomID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Manage_Product',
          path: '/manageProduct',
          builder: (context, params) => ManageProductWidget(
            productName: params.getParam(
              'productName',
              ParamType.String,
            ),
            productDesc: params.getParam(
              'productDesc',
              ParamType.String,
            ),
            retailPrice: params.getParam(
              'retailPrice',
              ParamType.double,
            ),
            wholesalePrice: params.getParam(
              'wholesalePrice',
              ParamType.double,
            ),
            category: params.getParam(
              'category',
              ParamType.String,
            ),
            uom: params.getParam(
              'uom',
              ParamType.String,
            ),
            productId: params.getParam(
              'productId',
              ParamType.String,
            ),
            quantity: params.getParam(
              'quantity',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'WorkPeriod',
          path: '/workPeriod',
          builder: (context, params) => const WorkPeriodWidget(),
        ),
        FFRoute(
          name: 'OpenShift',
          path: '/openShift',
          builder: (context, params) => const OpenShiftWidget(),
        ),
        FFRoute(
          name: 'closeShift',
          path: '/closeShift',
          builder: (context, params) => const CloseShiftWidget(),
        ),
        FFRoute(
          name: 'SalesByStaff',
          path: '/salesByStaff',
          builder: (context, params) => const SalesByStaffWidget(),
        ),
        FFRoute(
          name: 'Shift_Sales',
          path: '/shiftSales',
          builder: (context, params) => const ShiftSalesWidget(),
        ),
        FFRoute(
          name: 'Reports',
          path: '/reports',
          builder: (context, params) => const ReportsWidget(),
        ),
        FFRoute(
          name: 'Bank_Transations',
          path: '/bankTransations',
          builder: (context, params) => BankTransationsWidget(
            bankID: params.getParam(
              'bankID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Manage_supplier',
          path: '/manageSupplier',
          builder: (context, params) => ManageSupplierWidget(
            supplierName: params.getParam(
              'supplierName',
              ParamType.String,
            ),
            bankAccount: params.getParam(
              'bankAccount',
              ParamType.int,
            ),
            kraPin: params.getParam(
              'kraPin',
              ParamType.String,
            ),
            address: params.getParam(
              'address',
              ParamType.String,
            ),
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
            contactPerson: params.getParam(
              'contactPerson',
              ParamType.int,
            ),
            supplierID: params.getParam(
              'supplierID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Manage_Customer',
          path: '/manageCustomer',
          builder: (context, params) => ManageCustomerWidget(
            customerName: params.getParam(
              'customerName',
              ParamType.String,
            ),
            kraPin: params.getParam(
              'kraPin',
              ParamType.String,
            ),
            bankAccount: params.getParam(
              'bankAccount',
              ParamType.int,
            ),
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
            address: params.getParam(
              'address',
              ParamType.String,
            ),
            contactNumber: params.getParam(
              'contactNumber',
              ParamType.String,
            ),
            creditLimit: params.getParam(
              'creditLimit',
              ParamType.double,
            ),
            customerID: params.getParam(
              'customerID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Manage_Bank',
          path: '/manageBank',
          builder: (context, params) => ManageBankWidget(
            bankName: params.getParam(
              'bankName',
              ParamType.String,
            ),
            bankAccNo: params.getParam(
              'bankAccNo',
              ParamType.int,
            ),
            accManager: params.getParam(
              'accManager',
              ParamType.String,
            ),
            accDetails: params.getParam(
              'accDetails',
              ParamType.String,
            ),
            bankId: params.getParam(
              'bankId',
              ParamType.String,
            ),
            bankBalance: params.getParam(
              'bankBalance',
              ParamType.double,
            ),
            credit: params.getParam(
              'credit',
              ParamType.double,
            ),
            debit: params.getParam(
              'debit',
              ParamType.double,
            ),
            branchId: params.getParam(
              'branchId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'Receipt',
          path: '/receipt',
          builder: (context, params) => ReceiptWidget(
            receiptRef: params.getParam(
              'receiptRef',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Expenses',
          path: '/expenses',
          builder: (context, params) => const ExpensesWidget(),
        ),
        FFRoute(
          name: 'Manage_Expense',
          path: '/manageExpense',
          builder: (context, params) => ManageExpenseWidget(
            payID: params.getParam(
              'payID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Income',
          path: '/income',
          builder: (context, params) => const IncomeWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'Register',
          path: '/register',
          builder: (context, params) => const RegisterWidget(),
        ),
        FFRoute(
          name: 'AccountList',
          path: '/accountList',
          builder: (context, params) => AccountListWidget(
            companyDetails: params.getParam(
              'companyDetails',
              ParamType.JSON,
            ),
            userID: params.getParam(
              'userID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'page1',
          path: '/page1',
          builder: (context, params) => const Page1Widget(),
        ),
        FFRoute(
          name: 'cashdrawer',
          path: '/cashdrawer',
          builder: (context, params) => const CashdrawerWidget(),
        ),
        FFRoute(
          name: 'CustomerReceipt',
          path: '/customerReceipt',
          builder: (context, params) => CustomerReceiptWidget(
            customerID: params.getParam(
              'customerID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'CustomerTrans',
          path: '/customerTrans',
          builder: (context, params) => CustomerTransWidget(
            customerID: params.getParam(
              'customerID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'SupplierTrans',
          path: '/supplierTrans',
          builder: (context, params) => SupplierTransWidget(
            supplierID: params.getParam(
              'supplierID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'supplierPay',
          path: '/supplierPay',
          builder: (context, params) => SupplierPayWidget(
            supplierID: params.getParam(
              'supplierID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'CustomerReport',
          path: '/customerReport',
          builder: (context, params) => const CustomerReportWidget(),
        ),
        FFRoute(
          name: 'SupplierReport',
          path: '/supplierReport',
          builder: (context, params) => const SupplierReportWidget(),
        ),
        FFRoute(
          name: 'Manage_Income',
          path: '/manageIncome',
          builder: (context, params) => ManageIncomeWidget(
            payID: params.getParam(
              'payID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'HomePage2',
          path: '/homePage2',
          builder: (context, params) => const HomePage2Widget(),
        ),
        FFRoute(
          name: 'Home12ProjectDashboard',
          path: '/home12ProjectDashboard',
          builder: (context, params) => const Home12ProjectDashboardWidget(),
        ),
        FFRoute(
          name: 'PosPageCopy',
          path: '/posPageCopy',
          builder: (context, params) => const PosPageCopyWidget(),
        ),
        FFRoute(
          name: 'carwash',
          path: '/carwash',
          builder: (context, params) => const CarwashWidget(),
        ),
        FFRoute(
          name: 'setting',
          path: '/setting',
          builder: (context, params) => const SettingWidget(),
        ),
        FFRoute(
          name: 'Terms',
          path: '/terms',
          builder: (context, params) => const TermsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
