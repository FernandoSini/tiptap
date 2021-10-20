import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class LoginDialog extends StatefulWidget {
  const LoginDialog({Key? key}) : super(key: key);

  @override
  _LoginDialogState createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {
  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: TextFormField(
                style: TextStyle(color: Colors.yellowAccent.shade700),
                decoration: InputDecoration(
                  hintText: "Username or Email",
                  hintStyle: TextStyle(color: Colors.yellowAccent.shade700),
                  enabled: !isEnabled,
                  suffixIcon: Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.alternate_email_sharp,
                      color: Colors.yellowAccent.shade700,
                      size: 30,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.yellowAccent.shade700),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.yellowAccent.shade700),
                  ),
                ),
                onChanged: (value) {},
                keyboardType: TextInputType.text,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(color: Colors.yellowAccent.shade700),
                decoration: InputDecoration(
                  suffixIcon: Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.visibility,
                      color: Colors.yellowAccent.shade700,
                      size: 30,
                    ),
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.yellowAccent.shade700),
                  enabled: !isEnabled,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.yellowAccent.shade700,
                    ),
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
                onPressed: () {},
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
