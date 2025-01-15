import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _numeros = [];
  List<String> get numeros => _numeros;
  set numeros(List<String> value) {
    _numeros = value;
  }

  void addToNumeros(String value) {
    numeros.add(value);
  }

  void removeFromNumeros(String value) {
    numeros.remove(value);
  }

  void removeAtIndexFromNumeros(int index) {
    numeros.removeAt(index);
  }

  void updateNumerosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    numeros[index] = updateFn(_numeros[index]);
  }

  void insertAtIndexInNumeros(int index, String value) {
    numeros.insert(index, value);
  }

  int _initial = 0;
  int get initial => _initial;
  set initial(int value) {
    _initial = value;
  }

  List<ProcedimentosStruct> _procedures = [];
  List<ProcedimentosStruct> get procedures => _procedures;
  set procedures(List<ProcedimentosStruct> value) {
    _procedures = value;
  }

  void addToProcedures(ProcedimentosStruct value) {
    procedures.add(value);
  }

  void removeFromProcedures(ProcedimentosStruct value) {
    procedures.remove(value);
  }

  void removeAtIndexFromProcedures(int index) {
    procedures.removeAt(index);
  }

  void updateProceduresAtIndex(
    int index,
    ProcedimentosStruct Function(ProcedimentosStruct) updateFn,
  ) {
    procedures[index] = updateFn(_procedures[index]);
  }

  void insertAtIndexInProcedures(int index, ProcedimentosStruct value) {
    procedures.insert(index, value);
  }
}
