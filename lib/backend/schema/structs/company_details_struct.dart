// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyDetailsStruct extends BaseStruct {
  CompanyDetailsStruct({
    double? cashAmount,
  }) : _cashAmount = cashAmount;

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
}) =>
    CompanyDetailsStruct(
      cashAmount: cashAmount,
    );
