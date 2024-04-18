// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyDetailsStruct extends FFFirebaseStruct {
  CompanyDetailsStruct({
    double? cashAmount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cashAmount = cashAmount,
        super(firestoreUtilData);

  // "cash_amount" field.
  double? _cashAmount;
  double get cashAmount => _cashAmount ?? 0.0;
  set cashAmount(double? val) => _cashAmount = val;
  void incrementCashAmount(double amount) => _cashAmount = cashAmount + amount;
  bool hasCashAmount() => _cashAmount != null;

  static CompanyDetailsStruct fromMap(Map<String, dynamic> data) =>
      CompanyDetailsStruct(
        cashAmount: castToType<double>(data['cash_amount']),
      );

  static CompanyDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cash_amount': _cashAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cash_amount': serializeParam(
          _cashAmount,
          ParamType.double,
        ),
      }.withoutNulls;

  static CompanyDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyDetailsStruct(
        cashAmount: deserializeParam(
          data['cash_amount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CompanyDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompanyDetailsStruct && cashAmount == other.cashAmount;
  }

  @override
  int get hashCode => const ListEquality().hash([cashAmount]);
}

CompanyDetailsStruct createCompanyDetailsStruct({
  double? cashAmount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyDetailsStruct(
      cashAmount: cashAmount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyDetailsStruct? updateCompanyDetailsStruct(
  CompanyDetailsStruct? companyDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    companyDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyDetailsStructData(
  Map<String, dynamic> firestoreData,
  CompanyDetailsStruct? companyDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (companyDetails == null) {
    return;
  }
  if (companyDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && companyDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyDetailsData =
      getCompanyDetailsFirestoreData(companyDetails, forFieldValue);
  final nestedData =
      companyDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = companyDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyDetailsFirestoreData(
  CompanyDetailsStruct? companyDetails, [
  bool forFieldValue = false,
]) {
  if (companyDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(companyDetails.toMap());

  // Add any Firestore field values
  companyDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyDetailsListFirestoreData(
  List<CompanyDetailsStruct>? companyDetailss,
) =>
    companyDetailss
        ?.map((e) => getCompanyDetailsFirestoreData(e, true))
        .toList() ??
    [];
