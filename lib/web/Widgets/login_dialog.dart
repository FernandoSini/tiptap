import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:tiptap/web/controllers/login_controller.dart';
import 'package:provider/provider.dart';
import 'package:tiptap/web/provider/login_provider.dart';

class LoginDialog extends StatefulWidget {
  const LoginDialog({Key? key}) : super(key: key);

  @override
  _LoginDialogState createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {
  bool isEnabled = false;
  LoginController? loginController = LoginController();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final loginProvider = Provider.of<LoginProvider>(context);
    return AlertDialog(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Login",
              style: TextStyle(color: Colors.yellowAccent.shade700),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.yellowAccent.shade700,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      content: SizedBox(
        height: screenSize.height * 0.35,
        width: screenSize.width * 0.5,
        child: loginProvider.isLoading!
            ? Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 150,
                  child: LoadingIndicator(
                    indicatorType: Indicator.ballRotateChase,
                    colors: [Colors.yellowAccent.shade700],
                  ),
                ),
              )
            : Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: TextFormField(
                      controller: loginController!.usernameController,
                      style: TextStyle(color: Colors.yellowAccent.shade700),
                      decoration: InputDecoration(
                        hintText: "Username or Email",
                        hintStyle:
                            TextStyle(color: Colors.yellowAccent.shade700),
                        enabled: !isEnabled,
                        suffixIcon: Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.alternate_email_sharp,
                            color: Colors.yellowAccent.shade700,
                            size: 30,
                          ),
                        ),
                        errorBorder: loginProvider.hasError!
                            ? null
                            : OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.redAccent.shade700),
                              ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.yellowAccent.shade700),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.yellowAccent.shade700),
                        ),
                      ),
                      onChanged: (value) {},
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: TextFormField(
                      controller: loginController!.passwordController,
                      obscureText: !loginProvider.isVisible,
                      style: TextStyle(color: Colors.yellowAccent.shade700),
                      decoration: InputDecoration(
                        suffixIcon: Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: IconButton(
                            icon: Icon(
                              !loginProvider.isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 30,
                            ),
                            onPressed: () {
                              if (!loginProvider.isVisible) {
                                loginProvider.setVisible(true);
                              } else {
                                loginProvider.setVisible(false);
                              }
                            },
                            color: Colors.yellowAccent.shade700,
                          ),
                        ),
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Colors.yellowAccent.shade700),
                        enabled: !isEnabled,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.yellowAccent.shade700,
                          ),
                        ),
                        errorBorder: loginProvider.hasError!
                            ? null
                            : OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.redAccent.shade700),
                              ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.yellowAccent.shade700,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: screenSize.width * 0.5,
                    margin: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      onPressed: () async {
                        var data = await loginController!.login(
                            loginController!.usernameController.text,
                            loginController!.passwordController.text,
                            this.context);

                        if (data!) {
                          Navigator.pop(context);
                        }
                        // if (!loginProvider.isLoading!) {
                        //   loginProvider.setLoading(true);
                        //   Future.delayed(const Duration(seconds: 5), () {
                        //     loginProvider.setLoading(false);
                        //   });
                        // } else {
                        //   loginProvider.setLoading(false);
                        // }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellowAccent.shade700,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
