import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start NawiriPOS Group Code

class NawiriPOSGroup {
  static String baseUrl = 'https://sqlalchemy-nawiriapp.pythonanywhere.com/';
  static Map<String, String> headers = {};
  static NwLoginCall nwLoginCall = NwLoginCall();
  static NwGetBanksCall nwGetBanksCall = NwGetBanksCall();
  static GetLocationStockCall getLocationStockCall = GetLocationStockCall();
  static SaveBanksCall saveBanksCall = SaveBanksCall();
  static NwGetSuppliersCall nwGetSuppliersCall = NwGetSuppliersCall();
  static SaveSupplierCall saveSupplierCall = SaveSupplierCall();
  static SavesBankCall savesBankCall = SavesBankCall();
  static GetCustomersCall getCustomersCall = GetCustomersCall();
  static EditSupplierCall editSupplierCall = EditSupplierCall();
  static SaveCustomerCall saveCustomerCall = SaveCustomerCall();
  static UpdateCustomersCall updateCustomersCall = UpdateCustomersCall();
  static GetUomsCall getUomsCall = GetUomsCall();
  static SaveUomCall saveUomCall = SaveUomCall();
  static GetcategorysCall getcategorysCall = GetcategorysCall();
  static SavecategoryCall savecategoryCall = SavecategoryCall();
  static GetBankTransationsCall getBankTransationsCall =
      GetBankTransationsCall();
  static GetReceiptDetailsCall getReceiptDetailsCall = GetReceiptDetailsCall();
  static EditUomsCall editUomsCall = EditUomsCall();
  static PostReceiptCall postReceiptCall = PostReceiptCall();
  static EditCategoryCall editCategoryCall = EditCategoryCall();
  static GetProductsCall getProductsCall = GetProductsCall();
  static SaveReceiptsDetailsCall saveReceiptsDetailsCall =
      SaveReceiptsDetailsCall();
  static SaveProductCall saveProductCall = SaveProductCall();
  static SaveCustomerTransactionsCall saveCustomerTransactionsCall =
      SaveCustomerTransactionsCall();
  static GetBankTransTypesCall getBankTransTypesCall = GetBankTransTypesCall();
  static GetTransTypesCall getTransTypesCall = GetTransTypesCall();
  static SaveBankTransactionCall saveBankTransactionCall =
      SaveBankTransactionCall();
  static SaveShiftCall saveShiftCall = SaveShiftCall();
  static GetshiftCall getshiftCall = GetshiftCall();
  static RegisterUserCall registerUserCall = RegisterUserCall();
  static LoginUserCall loginUserCall = LoginUserCall();
  static CreateCompanyCall createCompanyCall = CreateCompanyCall();
  static UserCompanyCall userCompanyCall = UserCompanyCall();
  static ExpensesShiftCall expensesShiftCall = ExpensesShiftCall();
  static IncomeShiftCall incomeShiftCall = IncomeShiftCall();
  static SalesTotalCall salesTotalCall = SalesTotalCall();
  static IncomeCall incomeCall = IncomeCall();
  static ExpensesCall expensesCall = ExpensesCall();
  static SaveExpensesCall saveExpensesCall = SaveExpensesCall();
  static CustomerTransCall customerTransCall = CustomerTransCall();
  static SupplierTransCall supplierTransCall = SupplierTransCall();
  static ExpenseTransCall expenseTransCall = ExpenseTransCall();
  static GetcustomertransCall getcustomertransCall = GetcustomertransCall();
  static GetSuppliertransCall getSuppliertransCall = GetSuppliertransCall();
  static CashTotalCall cashTotalCall = CashTotalCall();
  static DeleteAccountCall deleteAccountCall = DeleteAccountCall();
  static CompanyCall companyCall = CompanyCall();
  static GetuserCall getuserCall = GetuserCall();
}

class NwLoginCall {
  Future<ApiCallResponse> call({
    int? branchId,
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'nwLogin',
      apiUrl: '${NawiriPOSGroup.baseUrl}/nwlogin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? branchid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.location.branch_id''',
      ));
}

class NwGetBanksCall {
  Future<ApiCallResponse> call({
    int? branchId,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'nwGetBanks',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getbankss',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? bankName(dynamic response) => (getJsonField(
        response,
        r'''$[:].bank_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? accDetails(dynamic response) => (getJsonField(
        response,
        r'''$[:].account_details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? accManager(dynamic response) => (getJsonField(
        response,
        r'''$[:].account_manager''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? bankId(dynamic response) => (getJsonField(
        response,
        r'''$[:].bank_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? accNo(dynamic response) => (getJsonField(
        response,
        r'''$[:].bank_acc_no''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetLocationStockCall {
  Future<ApiCallResponse> call({
    int? branchId,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLocationStock',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getlocation_stocks',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$[:].location_product_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? quantity(dynamic response) => (getJsonField(
        response,
        r'''$[:].location_product_quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sellingPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].location_product_sp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? image(dynamic response) => getJsonField(
        response,
        r'''$[:].product_image''',
        true,
      ) as List?;
  List<String>? branchid(dynamic response) => (getJsonField(
        response,
        r'''$[:].branch_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryid(dynamic response) => (getJsonField(
        response,
        r'''$[:].category_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? locationid(dynamic response) => (getJsonField(
        response,
        r'''$[:].location_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? locationProductid(dynamic response) => (getJsonField(
        response,
        r'''$[:].location_product_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? productid(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SaveBanksCall {
  Future<ApiCallResponse> call({
    String? bankName = '',
    String? accountManager = '',
    String? accountDetails = '',
    String? createdBy = '',
    String? bankAccNo = '',
    int? branchId = 10501,
    String? active = 'Y',
    String? bankId = '',
    double? bankRunningBal,
    String? createdOn = '',
    double? totalCredit,
    double? totalDebit,
    String? updatedBy = '',
    String? updatedOn = '',
  }) async {
    final ffApiRequestBody = '''
{
  "account_details": "$accountDetails",
  "account_manager": "$accountManager",
  "active": "$active",
  "bank_acc_no": "$bankAccNo",
  "bank_id": "$bankId",
  "bank_name": "$bankName",
  "bank_running_bal": $bankRunningBal,
  "branch_id": $branchId,
  "created_by": "$createdBy",
  "created_on": "$createdOn",
  "total_credit": $totalCredit,
  "total_debit": $totalDebit,
  "updated": "N",
  "updated_by": "$updatedBy",
  "updated_on": "$updatedOn"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveBanks',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savebanks',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NwGetSuppliersCall {
  Future<ApiCallResponse> call({
    int? branchId,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'nwGetSuppliers',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getsuppliers',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? supplierName(dynamic response) => (getJsonField(
        response,
        r'''$[:].supplier_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? bankAcc(dynamic response) => (getJsonField(
        response,
        r'''$[:].supplier_bank_acc''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? supplierCode(dynamic response) => getJsonField(
        response,
        r'''$[:].supplier_code''',
        true,
      ) as List?;
  List<String>? supplierPhone(dynamic response) => (getJsonField(
        response,
        r'''$[:].supplier_phone_no''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? supplierPin(dynamic response) => (getJsonField(
        response,
        r'''$[:].supplier_pin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? supplierContactPerson(dynamic response) => (getJsonField(
        response,
        r'''$[:].supplier_contact_person''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? supplierID(dynamic response) => (getJsonField(
        response,
        r'''$[:].supplier_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SaveSupplierCall {
  Future<ApiCallResponse> call({
    String? supplierName = '',
    String? supplierPhoneNo = '',
    String? supplierBankAcc = '',
    String? supplierAddress = '',
    String? supplierPin = '',
    int? supplierRunningBal,
    int? branchId = 10501,
    String? supplierId = '0',
    int? supplierContactPerson,
  }) async {
    final ffApiRequestBody = '''
{
  "supplier_id": "$supplierId",
  "supplier_name": "$supplierName",
  "supplier_bank_acc": "$supplierBankAcc",
  "supplier_phone_no": "$supplierPhoneNo",
  "supplier_address": "$supplierAddress",
  "supplier_pin": "$supplierPin",
  "supplier_running_bal": $supplierRunningBal,
  "branch_id": $branchId,
  "supplier_contact_person":$supplierContactPerson
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveSupplier',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savesupplier',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SavesBankCall {
  Future<ApiCallResponse> call({
    String? bankId = '',
    String? bankName = '',
    String? bankAccNo = '',
    String? accountDetails = '',
    String? accountManager = '',
    double? bankRunningBal,
    double? totalCredit,
    double? totalDebit,
    String? createdOn = '',
    String? createdBy = '',
    String? updatedOn = '',
    String? updatedBy = '',
    int? branchId,
  }) async {
    final ffApiRequestBody = '''
{
  "account_details": "$accountDetails",
  "account_manager": "$accountManager",
  "active": "<active>",
  "bank_acc_no": "$bankAccNo",
  "bank_id": "$bankId",
  "bank_name": "$bankName",
  "bank_running_bal": $bankRunningBal,
  "branch_id": $branchId,
  "created_by": "$createdBy",
  "created_on": "$createdOn",
  "total_credit": $totalCredit,
  "total_debit": $totalDebit,
  "updated": "N",
  "updated_by": "$updatedBy",
  "updated_on": "$updatedOn"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SavesBank',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savebanks',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? error(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class GetCustomersCall {
  Future<ApiCallResponse> call({
    int? branchId = 10501,
    String? customerId = '',
    String? customerAcc = '',
    String? customerName = '',
    double? customerRunningBal,
    String? customerBankAcc = '',
    String? customerPhoneNo = '',
    String? customerAddress = '',
    String? customerContactPerson = '',
    double? customerCreditLimit,
    String? active = '',
    double? customerTotalCredit,
    double? customerTotalDebit,
    String? routeId = '',
    String? updated = '',
    int? creditPeriod,
    String? creditStatus = '',
    String? pinNumber = '',
    String? clearpbalance = '',
    String? requestOrderno = '',
    String? fprint = '',
    String? isbranch = '',
    int? fbranch,
    String? wholesale = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetCustomers',
      apiUrl: '${NawiriPOSGroup.baseUrl}/GetCustomers',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? customerName(dynamic response) => (getJsonField(
        response,
        r'''$[:].customer_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? customerPhone(dynamic response) => (getJsonField(
        response,
        r'''$[:].customer_phone_no''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? customerBalance(dynamic response) => (getJsonField(
        response,
        r'''$[:].customer_running_bal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? customerID(dynamic response) => (getJsonField(
        response,
        r'''$[:].customer_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EditSupplierCall {
  Future<ApiCallResponse> call({
    String? supplierName = '',
    String? supplierPhoneNo = '',
    String? supplierBankAcc = '',
    String? supplierAddress = '',
    String? supplierPin = '',
    int? supplierRunningBal,
    int? branchId = 10501,
    String? supplierId = '',
    int? supplierContactPerson,
  }) async {
    final ffApiRequestBody = '''
{
  "supplier_id": "$supplierId",
  "supplier_name": "$supplierName",
  "supplier_bank_acc": "$supplierBankAcc",
  "supplier_phone_no": "$supplierPhoneNo",
  "supplier_address": "$supplierAddress",
  "supplier_pin": "$supplierPin",
  "supplier_running_bal": $supplierRunningBal,
  "branch_id": $branchId,
  "supplier_contact_person":$supplierContactPerson
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditSupplier',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savesupplier',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveCustomerCall {
  Future<ApiCallResponse> call({
    int? branchId,
    String? customerId = '',
    String? customerAcc = '',
    String? customerName = '',
    double? customerRunningBal,
    String? customerBankAcc = '',
    String? customerPhoneNo = '',
    String? customerAddress = '',
    String? customerContactPerson = '',
    double? customerCreditLimit,
    String? active = '',
    String? routeId = '',
    String? updated = '',
    int? creditPeriod,
    String? creditStatus = '',
    String? pinNumber = '',
    String? clearpbalance = '',
    String? requestOrderno = '',
    String? isbranch = '',
    int? fbranch,
    String? wholesale = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "customer_id": "$customerId",
  "customer_acc": "$customerAcc",
  "customer_name": "$customerName",
  "customer_running_bal": $customerRunningBal,
  "customer_bank_acc": "$customerBankAcc",
  "customer_phone_no": "$customerPhoneNo",
  "customer_address": "$customerAddress",
  "customer_contact_person": "$customerContactPerson",
  "customer_credit_limit": $customerCreditLimit,
  "active": "$active",
  "route_id": "$routeId",
  "updated": "$updated",
  "credit_period": $creditPeriod,
  "credit_status": "$creditStatus",
  "pin_number": "$pinNumber",
  "clearpbalance": "$clearpbalance",
  "request_orderno": "$requestOrderno",
  "isbranch": "$isbranch",
  "fbranch": $fbranch,
  "wholesale": "$wholesale"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveCustomer',
      apiUrl: '${NawiriPOSGroup.baseUrl}/SaveCustomer',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCustomersCall {
  Future<ApiCallResponse> call({
    int? branchId = 10501,
    String? customerId = '',
    String? customerAcc = '',
    String? customerName = '',
    double? customerRunningBal,
    String? customerBankAcc = '',
    String? customerPhoneNo = '',
    String? customerAddress = '',
    String? customerContactPerson = '',
    double? customerCreditLimit,
    String? active = '',
    String? routeId = '',
    String? updated = '',
    int? creditPeriod,
    String? creditStatus = '',
    String? pinNumber = '',
    String? clearpbalance = '',
    String? requestOrderno = '',
    String? isbranch = '',
    int? fbranch,
    String? wholesale = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "customer_id": "$customerId",
  "customer_acc": "$customerAcc",
  "customer_name": "$customerName",
  "customer_running_bal": $customerRunningBal,
  "customer_bank_acc": "$customerBankAcc",
  "customer_phone_no": "$customerPhoneNo",
  "customer_address": "$customerAddress",
  "customer_contact_person": "$customerContactPerson",
  "customer_credit_limit": $customerCreditLimit,
  "active": "$active",
  "route_id": "$routeId",
  "updated": "$updated",
  "credit_period": $creditPeriod,
  "credit_status": "$creditStatus",
  "pin_number": "$pinNumber",
  "clearpbalance": "$clearpbalance",
  "request_orderno": "$requestOrderno",
  "isbranch": "$isbranch",
  "fbranch": $fbranch,
  "wholesale": "$wholesale"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateCustomers',
      apiUrl: '${NawiriPOSGroup.baseUrl}/SaveCustomer',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? error(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result''',
      ));
}

class GetUomsCall {
  Future<ApiCallResponse> call({
    int? branchId = 10501,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetUoms',
      apiUrl: '${NawiriPOSGroup.baseUrl}/GetUoms',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? uomID(dynamic response) => (getJsonField(
        response,
        r'''$[:].uom_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uomDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].uom_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uomName(dynamic response) => (getJsonField(
        response,
        r'''$[:].uom_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updated(dynamic response) => (getJsonField(
        response,
        r'''$[:].updated''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SaveUomCall {
  Future<ApiCallResponse> call({
    String? uomCode = '',
    int? branchId = 10501,
    String? uomDescription = '',
    String? uomId = '',
    String? updated = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "uom_code": "$uomCode",
  "uom_description": "$uomDescription",
  "uom_id": "$uomId",
  "updated": "$updated"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveUom',
      apiUrl: '${NawiriPOSGroup.baseUrl}/SaveUom',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetcategorysCall {
  Future<ApiCallResponse> call({
    int? branchId = 10501,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Getcategorys',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getcategorys',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? categoryName(dynamic response) => (getJsonField(
        response,
        r'''$[:].category_desc''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryCount(dynamic response) => (getJsonField(
        response,
        r'''$[:].category_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryID(dynamic response) => (getJsonField(
        response,
        r'''$[:].category_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryCode(dynamic response) => (getJsonField(
        response,
        r'''$[:].category_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? branchId(dynamic response) => (getJsonField(
        response,
        r'''$[:].branch_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SavecategoryCall {
  Future<ApiCallResponse> call({
    int? branchId = 10501,
    String? categoryCode = '',
    int? categoryCount,
    String? categoryDesc = '',
    String? categoryId = '',
    double? rmargin,
    double? wmargin,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "category_code":"$categoryCode" ,
  "category_count": "$categoryCode",
  "category_desc": "$categoryDesc",
  "category_id": "$categoryId",
  "rmargin": $rmargin,
  "wmargin": $wmargin
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Savecategory',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savecategory',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBankTransationsCall {
  Future<ApiCallResponse> call({
    String? bankId = '08b0153e-7b39-47d5-a16d-ecda85f5269c',
    String? startDate = '',
    String? endDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "bank_id": "$bankId",
  "start_date": "$startDate",
  "end_date": "$endDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetBankTransations',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getbank_transs',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetReceiptDetailsCall {
  Future<ApiCallResponse> call({
    String? receiptId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "receipt_id": "$receiptId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetReceiptDetails',
      apiUrl: '${NawiriPOSGroup.baseUrl}/GetPos_receiptss',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? ref(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].receipt_ref''',
      ));
  String? receiptID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].receipt_id''',
      ));
}

class EditUomsCall {
  Future<ApiCallResponse> call({
    String? uomCode = '',
    int? branchId,
    String? uomDescription = '',
    String? uomId = '',
    String? updated = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "uom_code": "$uomCode",
  "uom_description": "$uomDescription",
  "uom_id": "$uomId",
  "updated": "$updated"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditUoms',
      apiUrl: '${NawiriPOSGroup.baseUrl}/SaveUom',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostReceiptCall {
  Future<ApiCallResponse> call({
    String? receiptId = '',
    String? receiptRef = '',
    String? receiptDate = '',
    String? receiptTime = '',
    double? receiptTotalAmount,
    double? totalVat,
    double? totalCatLevy,
    double? receiptCashAmount,
    double? receiptChequeAmount,
    double? receiptCardAmount,
    double? receiptVoucherAmount,
    double? receiptMobileMoney,
    int? branchId,
    String? locationId = '',
    String? staffId = '',
    String? tillId = '',
    String? shiftId = '',
    String? cancelled = '',
    String? tableId = '',
    String? customerId = '',
    double? receiptPaid,
    double? customerAlias,
    String? stype = '',
    String? dlocation = '',
    String? salesStaffId = '',
    int? receiptCode,
    String? comments = '',
    double? receiptDiscount,
    bool? updated,
    String? uomCode = '',
    bool? billPrinted,
    double? totalFuelVat,
    String? serviceCustomerId = '',
    String? serviceVehicleId = '',
    String? loyaltyCustomerId = '',
    String? driverId = '',
    String? cuSerial = '',
    String? cuInvoice = '',
    String? cuUrl = '',
    dynamic receiptDetailsJson,
  }) async {
    final receiptDetails = _serializeJson(receiptDetailsJson, true);
    final ffApiRequestBody = '''
{
  "receipt_id": "$receiptId",
  "receipt_ref": "$receiptRef",
  "receipt_date": "$receiptDate",
  "receipt_time": "$receiptTime",
  "receipt_total_amount": $receiptTotalAmount,
  "total_vat": $totalVat,
  "total_cat_levy": $totalCatLevy,
  "receipt_cash_amount": $receiptCashAmount,
  "receipt_cheque_amount": $receiptChequeAmount,
  "receipt_card_amount": $receiptCardAmount,
  "receipt_voucher_amount": $receiptVoucherAmount,
  "receipt_mobile_money": $receiptMobileMoney,
  "branch_id": $branchId,
  "location_id": "$locationId",
  "staff_id": "$staffId",
  "till_id": "$tillId",
  "shift_id": "$shiftId",
  "cancelled": "$cancelled",
  "table_id": "$tableId",
  "customer_id": "$customerId",
  "receipt_paid": $receiptPaid,
  "customer_alias": $customerAlias,
  "stype": "$stype",
  "dlocation": "$dlocation",
  "sales_staff_id": "$salesStaffId",
  "receipt_code": $receiptCode,
  "comments": "$comments",
  "receipt_discount": $receiptDiscount,
  "updated": $updated,
  "uom_code": "$uomCode",
  "bill_printed": $billPrinted,
  "total_fuel_vat": $totalFuelVat,
  "service_customer_id": "$serviceCustomerId",
  "service_vehicle_id": "$serviceVehicleId",
  "loyalty_customer_id": "$loyaltyCustomerId",
  "driver_id": "$driverId",
  "cu_serial": "$cuSerial",
  "cu_invoice": "$cuInvoice",
  "cu_url": "$cuUrl",
  "receipt_details": $receiptDetails
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostReceipt',
      apiUrl: '${NawiriPOSGroup.baseUrl}/post_receipt',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditCategoryCall {
  Future<ApiCallResponse> call({
    int? branchId,
    String? categoryCode = '',
    int? categoryCount,
    String? categoryDesc = '',
    String? categoryId = '',
    double? rmargin,
    double? wmargin,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "category_code":"$categoryCode" ,
  "category_count": "$categoryCode",
  "category_desc": "$categoryDesc",
  "category_id": "$categoryId",
  "rmargin": $rmargin,
  "wmargin": $wmargin
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit Category',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savecategory',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductsCall {
  Future<ApiCallResponse> call({
    int? branchId = 10501,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Products',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getlocation_stocks',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$[:].location_product_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? productID(dynamic response) => (getJsonField(
        response,
        r'''$[:].location_product_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? productQuantity(dynamic response) => (getJsonField(
        response,
        r'''$[:].location_product_quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SaveReceiptsDetailsCall {
  Future<ApiCallResponse> call({
    String? accompanimentId = '',
    int? batchNo,
    int? branchId,
    bool? cancelled,
    double? catLevy,
    double? discount,
    String? footnote = '',
    double? fuelVat,
    bool? itemPrinted,
    int? linenum,
    String? locationProductId = '',
    String? packaging = '',
    double? productBp,
    double? productSp,
    String? receiptDetailsId = '',
    String? receiptId = '',
    int? transQuantity,
    String? uomCode = '',
    bool? updated,
    double? vat,
  }) async {
    const ffApiRequestBody = '''
{
  "accompaniment_id": null,
  "batch_no": null,
  "branch_id": "10501",
  "cancelled": "N",
  "cat_levy": "None",
  "discount": "0.00",
  "footnote": null,
  "fuel_vat": "None",
  "item_printed": null,
  "linenum": "1",
  "location_product_id": "c5b4984b-1012-4c07-a5f7-42431cd703cf",
  "packaging": "None",
  "product_bp": "17000.00",
  "product_sp": "17000.00",
  "receipt_details_id": "000d5abf-0147-4bd5-a5f9-70110d035264",
  "receipt_id": "10e6737b-58ce-452a-a68e-f9e4fc8027f9",
  "trans_quantity": "1.000",
  "uom_code": "pcs",
  "updated": "N",
  "vat": "None"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'saveReceiptsDetails',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savepos_receipt_details',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveProductCall {
  Future<ApiCallResponse> call({
    String? locationProductId = '',
    String? locationProductDescription = '',
    int? branchId,
    double? locationProductSp,
    String? uomCode = '',
    String? categoryId = '',
    int? locationProductQuantity = 0,
    String? locationId = '',
    String? productId = '',
    String? locationProductScancode = '',
    double? locationProductSp1,
    String? updated = '',
    String? blockneg = '',
    String? active = '',
    int? locationProductMaxQuantity,
    int? locationProductMinQuantity,
    String? locationProductReorderLevel = '',
    String? locationProductVattable = '',
    int? locationProductcode,
  }) async {
    final ffApiRequestBody = '''
{
  "location_product_description": "$locationProductDescription",
  "location_product_id": "$locationProductId",
  "location_product_sp": $locationProductSp,
  "branch_id": $branchId,
  "category_id": "$categoryId",
  "location_product_quantity": $locationProductQuantity,
  "location_id": "$locationId",
  "product_id": "$productId",
  "location_product_scancode": "$locationProductScancode",
  "location_product_sp1": $locationProductSp1,
  "uom_code": "$uomCode",
  "updated": "$updated",
  "blockneg": "$blockneg",
  "active": "$active",
  "location_product_max_quantity": $locationProductMaxQuantity,
  "location_product_min_quantity": $locationProductMinQuantity,
  "location_product_reorder_level": "$locationProductReorderLevel",
  "location_product_vattable": "$locationProductVattable",
  "location_productcode": $locationProductcode,
  "location_product_catlv": null,
  "fixed_price": null,
  "fuelvat": null,
  "packaging_fixed": null,
  "packaging_qty": "None",
  "packaging_ratio": "None",
  "packaging_uom": null,
  "accompaniments": null,
  "batch_tracking": null,
  "partaccompaniment": "None",
  "product_image": null,
  "vat_code": null
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveProduct',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savelocation_stock',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveCustomerTransactionsCall {
  Future<ApiCallResponse> call({
    String? customerTransId = '',
    String? transactionRef = '',
    double? transactionAmount,
    String? transactionApproved = '',
    String? customerId = '',
    int? transTypeId = 10,
    int? runningBal,
  }) async {
    final ffApiRequestBody = '''
{
  "customer_trans_id": "$customerTransId",
  "transaction_ref": "$transactionRef",
  "transaction_amount": $transactionAmount,
  "transaction_approved": "$transactionApproved",
  "customer_id": "$customerId",
  "trans_type_id": $transTypeId,
  "running_bal": $runningBal
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveCustomerTransactions',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savecustomer_trans',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBankTransTypesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetBankTransTypes',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Get_bank_trans_types',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? transType(dynamic response) => (getJsonField(
        response,
        r'''$[:].bank_trans_type_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? typeSign(dynamic response) => (getJsonField(
        response,
        r'''$[:].bank_trans_type_sign''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? typeID(dynamic response) => (getJsonField(
        response,
        r'''$[:].bank_trans_type_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetTransTypesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetTransTypes',
      apiUrl: '${NawiriPOSGroup.baseUrl}/pay_trans_type',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? payType(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_type_desc''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SaveBankTransactionCall {
  Future<ApiCallResponse> call({
    String? bankTransId = '',
    String? bankId = '',
    String? bankTransTypeId = '',
    String? transRef = '',
    String? transDate = '',
    double? transAmount,
    String? transComment = '',
    String? branchId = '',
    String? dueDate = '',
    String? createdBy = '',
  }) async {
    final ffApiRequestBody = '''
{
  "bank_trans_id": "$bankTransId",
  "bank_id": "$bankId",
  "bank_trans_type_id": "$bankTransTypeId",
  "trans_ref": "$transRef",
  "due_date": "$dueDate",
  "trans_date": "$transDate",
  "trans_amount": $transAmount,
  "trans_comment": "$transComment",
  "branch_id": "$branchId",
  "created_by": "$createdBy"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveBankTransaction',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savebank_trans',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveShiftCall {
  Future<ApiCallResponse> call({
    int? branchId,
    String? sdate = '',
    String? shiftClosetime = '',
    String? shiftComplete = '',
    String? shiftDay = '',
    String? shiftDescription = '',
    String? shiftId = '',
    String? tillId = '',
    String? updated = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "sdate": "$sdate",
  "shift_closetime": "$shiftClosetime",
  "shift_complete": "$shiftComplete",
  "shift_day": "$shiftDay",
  "shift_description": "$shiftDescription",
  "shift_id": "$shiftId",
  "till_id": "$tillId",
  "updated": "$updated"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveShift',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Saveshift',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetshiftCall {
  Future<ApiCallResponse> call({
    int? branchId,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Getshift',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getshifts',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? shiftID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].shift_id''',
      ));
  String? desc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].shift_description''',
      ));
  String? time(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].sdate''',
      ));
}

class RegisterUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? username = '',
    String? email = '',
    String? password = '',
    String? confirmPassword = '',
    dynamic companyDetailsJson,
  }) async {
    final companyDetails = _serializeJson(companyDetailsJson, true);
    final ffApiRequestBody = '''
{
  "user_id": "$userId",
  "username": "$username",
  "email": "$email",
  "password": "$password",
  "confirm_password": "$confirmPassword",
  "company_details": $companyDetails
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUser',
      apiUrl: '${NawiriPOSGroup.baseUrl}/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginUser',
      apiUrl: '${NawiriPOSGroup.baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.user_id''',
      ));
  String? shiftID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.shift_id''',
      ));
}

class CreateCompanyCall {
  Future<ApiCallResponse> call({
    int? companyId,
    String? companyName = '',
    String? companyRegNo = '',
    String? companyPinno = '',
    String? companyVatno = '',
    String? companyTel = '',
    String? companyTown = '',
    String? companyCounty = '',
    String? companyAddress = '',
    String? companyShortname = '',
    int? nssfNumber,
    int? nhifNumber,
    String? paymentDetails = '',
    String? userId = '',
    dynamic companyDetailsJson,
    String? marketCategory = '',
  }) async {
    final companyDetails = _serializeJson(companyDetailsJson, true);
    final ffApiRequestBody = '''
{
  "company_id": $companyId,
  "user_id": "$userId",
  "company_name": "$companyName",
  "company_reg_no": "$companyRegNo",
  "company_pinno": "$companyPinno",
  "company_vatno": "$companyVatno",
  "company_tel": "$companyTel",
  "company_town": "$companyTown",
  "company_county": "$companyCounty",
  "company_address": "$companyAddress",
  "company_shortname": "$companyShortname",
  "nssf_number": $nssfNumber,
  "nhif_number": $nhifNumber,
  "payment_details": "$paymentDetails",
  "market_category": "$marketCategory"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateCompany',
      apiUrl: '${NawiriPOSGroup.baseUrl}/CreateCompany',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserCompanyCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userCompany',
      apiUrl: '${NawiriPOSGroup.baseUrl}/company_details',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ExpensesShiftCall {
  Future<ApiCallResponse> call({
    int? branchId,
    String? shiftId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "shift_id": "$shiftId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ExpensesShift',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getpay_outz',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? branchID(dynamic response) => (getJsonField(
        response,
        r'''$[:].branch_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cashAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].cash_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payID(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payTo(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_to''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? shiftID(dynamic response) => (getJsonField(
        response,
        r'''$[:].shift_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tillID(dynamic response) => (getJsonField(
        response,
        r'''$[:].till_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class IncomeShiftCall {
  Future<ApiCallResponse> call({
    int? branchId,
    String? shiftId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "shift_id": "$shiftId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'IncomeShift',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getpay_incomez',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? branchID(dynamic response) => (getJsonField(
        response,
        r'''$[:].branch_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cashAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].cash_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payID(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payTo(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_to''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? shiftID(dynamic response) => (getJsonField(
        response,
        r'''$[:].shift_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tillID(dynamic response) => (getJsonField(
        response,
        r'''$[:].till_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SalesTotalCall {
  Future<ApiCallResponse> call({
    int? branchId,
    String? shiftId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "shift_id": "$shiftId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SalesTotal',
      apiUrl: '${NawiriPOSGroup.baseUrl}/cashTotal',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? cash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.total_cash_amount''',
      ));
  String? cheque(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.total_cheque_amount''',
      ));
  String? mpesa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.total_mobile_amount''',
      ));
  String? total(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.receipt_total_amount''',
      ));
}

class IncomeCall {
  Future<ApiCallResponse> call({
    int? branchId,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Income',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getpay_income',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? branchID(dynamic response) => (getJsonField(
        response,
        r'''$[:].branch_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cashAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].cash_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payID(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payTo(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_to''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? shiftID(dynamic response) => (getJsonField(
        response,
        r'''$[:].shift_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tillID(dynamic response) => (getJsonField(
        response,
        r'''$[:].till_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ExpensesCall {
  Future<ApiCallResponse> call({
    int? branchId,
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Expenses',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getpay_outs',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? branchID(dynamic response) => (getJsonField(
        response,
        r'''$[:].branch_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cashAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].cash_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payAmount(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? payID(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$[:].pay_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? payTo(dynamic response) => getJsonField(
        response,
        r'''$[:].pay_to''',
        true,
      ) as List?;
  List<String>? shiftID(dynamic response) => (getJsonField(
        response,
        r'''$[:].shift_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tillID(dynamic response) => (getJsonField(
        response,
        r'''$[:].till_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SaveExpensesCall {
  Future<ApiCallResponse> call({
    int? branchId,
    double? cashAmount,
    double? ccAmount,
    double? chequeAmount,
    String? customerId = '',
    String? fId = '',
    double? mobileAmount,
    double? payAmount,
    String? payDate = '',
    String? payDescription = '',
    String? payId = '',
    String? payRef = '',
    String? payTime = '',
    String? payTo = '',
    String? payTypeId = '',
    String? staffId = '',
    String? shiftId = '',
    String? tillId = '',
    String? updated = '',
    String? voucherAmount = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "cash_amount": $cashAmount,
  "cc_amount": $ccAmount,
  "cheque_amount": $chequeAmount,
  "customer_id": "$customerId",
  "f_id": "$fId",
  "mobile_amount": $mobileAmount,
  "pay_amount": $payAmount,
  "pay_date": "$payDate",
  "pay_description": "$payDescription",
  "pay_id": "$payId",
  "pay_ref": "$payRef",
  "pay_time": "$payTime",
  "pay_to": "$payTo",
  "pay_type_id": "$payTypeId",
  "shift_id": "$shiftId",
  "staff_id": "$staffId",
  "till_id": "$tillId",
  "updated": "$updated",
  "voucher_amount": "$voucherAmount"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveExpenses',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Savepay_out',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CustomerTransCall {
  Future<ApiCallResponse> call({
    int? branchId,
    double? cashAmount,
    double? ccAmount,
    double? chequeAmount,
    String? customerId = '',
    String? fId = '',
    double? mobileAmount,
    double? payAmount,
    String? payDate = '',
    String? payDescription = '',
    String? payId = '',
    String? payRef = '',
    String? payTime = '',
    String? payTo = '',
    String? payTypeId = '',
    String? staffId = '',
    String? shiftId = '',
    String? tillId = '',
    String? updated = '',
    String? voucherAmount = '',
    String? bankId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "cash_amount": $cashAmount,
  "cc_amount": $ccAmount,
  "cheque_amount": $chequeAmount,
  "customer_id": "$customerId",
  "f_id": "$fId",
  "mobile_amount": $mobileAmount,
  "pay_amount": $payAmount,
  "pay_date": "$payDate",
  "pay_description": "$payDescription",
  "pay_id": "$payId",
  "pay_ref": "$payRef",
  "pay_time": "$payTime",
  "pay_to": "$payTo",
  "pay_type_id": "$payTypeId",
  "shift_id": "$shiftId",
  "staff_id": "$staffId",
  "bank_id": "$bankId",
  "till_id": "$tillId",
  "updated": "$updated",
  "voucher_amount": "$voucherAmount"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'customerTrans',
      apiUrl: '${NawiriPOSGroup.baseUrl}/customerReceipt',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SupplierTransCall {
  Future<ApiCallResponse> call({
    int? branchId,
    double? cashAmount,
    double? ccAmount,
    double? chequeAmount,
    String? customerId = '',
    String? fId = '',
    double? mobileAmount,
    double? payAmount,
    String? payDate = '',
    String? payDescription = '',
    String? payId = '',
    String? payRef = '',
    String? payTime = '',
    String? payTo = '',
    String? payTypeId = '',
    String? staffId = '',
    String? shiftId = '',
    String? tillId = '',
    String? updated = '',
    String? voucherAmount = '',
    String? bankId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "branch_id": $branchId,
  "cash_amount": $cashAmount,
  "cc_amount": $ccAmount,
  "cheque_amount": $chequeAmount,
  "customer_id": "$customerId",
  "f_id": "$fId",
  "mobile_amount": $mobileAmount,
  "pay_amount": $payAmount,
  "pay_date": "$payDate",
  "pay_description": "$payDescription",
  "pay_id": "$payId",
  "pay_ref": "$payRef",
  "pay_time": "$payTime",
  "pay_to": "$payTo",
  "pay_type_id": "$payTypeId",
  "shift_id": "$staffId",
  "staff_id": "$shiftId",
  "bank_id": "$bankId",
  "till_id": "$tillId",
  "updated": "$updated",
  "voucher_amount": "$voucherAmount"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SupplierTrans',
      apiUrl: '${NawiriPOSGroup.baseUrl}/supplierReceipt',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ExpenseTransCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'expenseTrans',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Get_pay_trans_type',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetcustomertransCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_id": "$customerId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Getcustomertrans',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getcustomer_transs',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? balance(dynamic response) => (getJsonField(
        response,
        r'''$[:].running_bal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_on''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].transaction_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tranID(dynamic response) => (getJsonField(
        response,
        r'''$[:].trans_type_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetSuppliertransCall {
  Future<ApiCallResponse> call({
    String? supplierId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "supplier_id": "$supplierId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetSuppliertrans ',
      apiUrl: '${NawiriPOSGroup.baseUrl}/GetSupplier_transs',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? balance(dynamic response) => (getJsonField(
        response,
        r'''$[:].running_bal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_on''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].transaction_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tranID(dynamic response) => (getJsonField(
        response,
        r'''$[:].trans_type_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CashTotalCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'cashTotal',
      apiUrl: '${NawiriPOSGroup.baseUrl}/cashTotal',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAccountCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? companyId = '',
    String? branchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId",
  "company_id": "$companyId",
  "branch_id": "$branchId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteAccount',
      apiUrl: '${NawiriPOSGroup.baseUrl}/DeleteCompany',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CompanyCall {
  Future<ApiCallResponse> call({
    int? companyId,
  }) async {
    final ffApiRequestBody = '''
{
  "company_id": $companyId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'company',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getcompany',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].company_name''',
      ));
  String? pin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].company_pinno''',
      ));
  String? addresss(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].company_address''',
      ));
  String? town(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].company_town''',
      ));
}

class GetuserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Getuser',
      apiUrl: '${NawiriPOSGroup.baseUrl}/Getuser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].username''',
      ));
}

/// End NawiriPOS Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
