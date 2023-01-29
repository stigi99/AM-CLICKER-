import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _ectsnasekunde = prefs.getDouble('ff_ectsnasekunde') ?? _ectsnasekunde;
    _ectsaktualne = prefs.getDouble('ff_ectsaktualne') ?? _ectsaktualne;
    _przyrostects = prefs.getDouble('ff_przyrostects') ?? _przyrostects;
    _Magister = prefs.getInt('ff_Magister') ?? _Magister;
    _Doktor = prefs.getInt('ff_Doktor') ?? _Doktor;
    _Profesor = prefs.getInt('ff_Profesor') ?? _Profesor;
  }

  late SharedPreferences prefs;

  String _opistytul = '';
  String get opistytul => _opistytul;
  set opistytul(String _value) {
    notifyListeners();

    _opistytul = _value;
  }

  String _opisobjasnienie = '';
  String get opisobjasnienie => _opisobjasnienie;
  set opisobjasnienie(String _value) {
    notifyListeners();

    _opisobjasnienie = _value;
  }

  double _ectsnasekunde = 0.0;
  double get ectsnasekunde => _ectsnasekunde;
  set ectsnasekunde(double _value) {
    notifyListeners();

    _ectsnasekunde = _value;
    prefs.setDouble('ff_ectsnasekunde', _value);
  }

  double _ectsaktualne = 0.0;
  double get ectsaktualne => _ectsaktualne;
  set ectsaktualne(double _value) {
    notifyListeners();

    _ectsaktualne = _value;
    prefs.setDouble('ff_ectsaktualne', _value);
  }

  double _przyrostects = 1;
  double get przyrostects => _przyrostects;
  set przyrostects(double _value) {
    notifyListeners();

    _przyrostects = _value;
    prefs.setDouble('ff_przyrostects', _value);
  }

  int _Magister = 0;
  int get Magister => _Magister;
  set Magister(int _value) {
    notifyListeners();

    _Magister = _value;
    prefs.setInt('ff_Magister', _value);
  }

  int _Doktor = 0;
  int get Doktor => _Doktor;
  set Doktor(int _value) {
    notifyListeners();

    _Doktor = _value;
    prefs.setInt('ff_Doktor', _value);
  }

  int _Profesor = 0;
  int get Profesor => _Profesor;
  set Profesor(int _value) {
    notifyListeners();

    _Profesor = _value;
    prefs.setInt('ff_Profesor', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
