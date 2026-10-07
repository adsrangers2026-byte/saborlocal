import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
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
      _tokenXano = prefs.getString('ff_tokenXano') ?? _tokenXano;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _tokenXano = '';
  String get tokenXano => _tokenXano;
  set tokenXano(String value) {
    _tokenXano = value;
    prefs.setString('ff_tokenXano', value);
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
