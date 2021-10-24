import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiptap/web/helpers/extensions.dart';
import 'package:tiptap/web/provider/login_provider.dart';

class LoginController {
  final TextEditingController usernameController =
      TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  bool? isLoginValid = false;

  bool? hasError = false;
  String? error = "";
  bool isVisible = false;
  LoginProvider? loginProvider;

  Future<bool?> login(
      String username, String password, BuildContext context) async {
    loginProvider = context.read<LoginProvider>();
    loginProvider?.setLoading(true);
    try {
      bool isValid = false;
      isValid = validateLogin(username, password)!;

      if (isValid) {
        usernameController.clear();
        passwordController.clear();

        // return Future.delayed(const Duration(seconds: 5), () {
        //   return isValid;
        // });
        return Future.delayed(const Duration(seconds: 5), () {
          loginProvider?.setLoginValid(isValid);
          loginProvider?.setLoading(false);
          return true;
        });
      } else {
        usernameController.clear();
        passwordController.clear();

        return Future.delayed(const Duration(seconds: 5), () {
          loginProvider?.setLoading(false);
          loginProvider?.setHasError(true);
          return false;
        });
      }
    } catch (e) {
      return Future.delayed(const Duration(seconds: 5), () {
        loginProvider?.setLoading(false);
        loginProvider?.setHasError(true);
        String? error = "Desculpe, mas o login ou a senha está incorreta!";
        return false;
      });
    }
  }

  bool? validateLogin(String username, String password) {
    if (username.isNotEmpty && (password.isNotEmpty && password.length >= 6)) {
      isLoginValid = true;
      return isLoginValid!;
    } else {
      isLoginValid = false;
      return isLoginValid!;
    }
  }
}
