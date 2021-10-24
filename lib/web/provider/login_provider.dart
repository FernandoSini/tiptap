import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool? isLoginValid = false;
  bool? isLoading = false;
  bool? get loading => isLoading;
  bool? hasError = false;
  String? error = "";
  bool isVisible = false;
  

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void setHasError(bool value) {
    hasError = value;
    notifyListeners();
  }

  void setVisible(bool value) {
    isVisible = value;
    notifyListeners();
  }

  void setLoginValid(bool value) {
    isLoginValid = value;
    notifyListeners();
  }
}
