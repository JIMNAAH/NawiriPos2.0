import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _cart = prefs
              .getStringList('ff_cart')
              ?.map((x) {
                try {
                  return CartStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cart;
    });
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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CartStruct> _cart = [];
  List<CartStruct> get cart => _cart;
  set cart(List<CartStruct> value) {
    _cart = value;
    prefs.setStringList('ff_cart', value.map((x) => x.serialize()).toList());
  }

  void addToCart(CartStruct value) {
    _cart.add(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void removeFromCart(CartStruct value) {
    _cart.remove(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCart(int index) {
    _cart.removeAt(index);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void updateCartAtIndex(
    int index,
    CartStruct Function(CartStruct) updateFn,
  ) {
    _cart[index] = updateFn(_cart[index]);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCart(int index, CartStruct value) {
    _cart.insert(index, value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

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
