import 'package:flutter/material.dart';
import 'package:sara_store/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.grey,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 50.0,
                    ),
                    child: Text(
                      'Welcome back',
                      style: appTextStyle(
                        FontWeight.bold,
                        65.0,
                        Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
