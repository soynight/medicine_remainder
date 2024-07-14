import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier {
  final List<String> _textoName = [];
  final List<String> _textoHour = [];
  final List<String> _textoColor = [];

  List<String> get textoName => _textoName;
  List<String> get textoHour => _textoHour;
  List<String> get textoColor => _textoColor;

  void addText(String textName, String textHour, String textColor) {
    _textoName.add(textName);
    _textoHour.add(textHour);
    _textoColor.add(textColor);
    notifyListeners();
  }
}
