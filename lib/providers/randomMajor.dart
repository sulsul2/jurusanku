import 'package:flutter/material.dart';

class MajorProvider with ChangeNotifier {
  Map<String, String>? _randomMajor;

  Map<String, String>? get randomMajor => _randomMajor;

  void setRandomMajor(Map<String, String> major) {
    _randomMajor = major;
    notifyListeners();
  }
}
