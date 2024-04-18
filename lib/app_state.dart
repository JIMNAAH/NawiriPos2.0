import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _branchID = prefs.getInt('ff_branchID') ?? _branchID;
    });
    _safeInit(() {
      _cashTotal = prefs.getDouble('ff_cashTotal') ?? _cashTotal;
    });
    _safeInit(() {
      _ShiftD = prefs.getString('ff_ShiftD') ?? _ShiftD;
    });
    _safeInit(() {
      _cash = prefs.getDouble('ff_cash') ?? _cash;
    });
    _safeInit(() {
      _bank = prefs.getDouble('ff_bank') ?? _bank;
    });
    _safeInit(() {
      _mpesa = prefs.getDouble('ff_mpesa') ?? _mpesa;
    });
    _safeInit(() {
      _CartCount = prefs.getInt('ff_CartCount') ?? _CartCount;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _branchID = 0;
  int get branchID => _branchID;
  set branchID(int value) {
    _branchID = value;
    prefs.setInt('ff_branchID', value);
  }

  double _cashTotal = 0.0;
  double get cashTotal => _cashTotal;
  set cashTotal(double value) {
    _cashTotal = value;
    prefs.setDouble('ff_cashTotal', value);
  }

  String _ShiftD = '';
  String get ShiftD => _ShiftD;
  set ShiftD(String value) {
    _ShiftD = value;
    prefs.setString('ff_ShiftD', value);
  }

  String _StaffD = '';
  String get StaffD => _StaffD;
  set StaffD(String value) {
    _StaffD = value;
  }

  String _isTapped = '';
  String get isTapped => _isTapped;
  set isTapped(String value) {
    _isTapped = value;
  }

  double _cash = 0.0;
  double get cash => _cash;
  set cash(double value) {
    _cash = value;
    prefs.setDouble('ff_cash', value);
  }

  double _bank = 0.0;
  double get bank => _bank;
  set bank(double value) {
    _bank = value;
    prefs.setDouble('ff_bank', value);
  }

  double _mpesa = 0.0;
  double get mpesa => _mpesa;
  set mpesa(double value) {
    _mpesa = value;
    prefs.setDouble('ff_mpesa', value);
  }

  List<dynamic> _Carts = [];
  List<dynamic> get Carts => _Carts;
  set Carts(List<dynamic> value) {
    _Carts = value;
  }

  void addToCarts(dynamic value) {
    _Carts.add(value);
  }

  void removeFromCarts(dynamic value) {
    _Carts.remove(value);
  }

  void removeAtIndexFromCarts(int index) {
    _Carts.removeAt(index);
  }

  void updateCartsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _Carts[index] = updateFn(_Carts[index]);
  }

  void insertAtIndexInCarts(int index, dynamic value) {
    _Carts.insert(index, value);
  }

  String _productID = '';
  String get productID => _productID;
  set productID(String value) {
    _productID = value;
  }

  int _CartCount = 0;
  int get CartCount => _CartCount;
  set CartCount(int value) {
    _CartCount = value;
    prefs.setInt('ff_CartCount', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
