import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:sara_store/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passwordHide = true;

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
                color: kPrimaryColor,
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
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                padding: EdgeInsets.only(
                  left: 43.0,
                  top: 36.0,
                  right: 46.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: appTextStyle(
                        FontWeight.w700,
                        18.0,
                        Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          IconlyLight.message,
                          color: Color(0xFF868686),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          'Email',
                          style: appTextStyle(
                            FontWeight.w600,
                            16.0,
                            Color(0xFF868686),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4.0,
                      ),
                      child: TextFormField(
                        controller: emailController,
                        style: appTextStyle(
                          FontWeight.w600,
                          17.0,
                          Colors.black,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 46.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          IconlyLight.lock,
                          color: Color(0xFF868686),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          'Password',
                          style: appTextStyle(
                            FontWeight.w600,
                            16.0,
                            Color(0xFF868686),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4.0,
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        style: appTextStyle(
                          FontWeight.w600,
                          17.0,
                          Colors.black,
                        ),
                        obscureText: passwordHide,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          // suffixIcon: IconButton(
                          //   icon: Icon(
                          //     passwordHide
                          //         ? Icons.visibility_outlined
                          //         : Icons.visibility_off,
                          //     color: Colors.black,
                          //   ),
                          //   onPressed: () {
                          //     setState(
                          //       () {
                          //         passwordHide = !passwordHide;
                          //       },
                          //     );
                          //   },
                          // ),
                          suffixIcon: InkWell(
                            // icon: Icon(
                            //   passwordHide
                            //       ? Icons.visibility_outlined
                            //       : Icons.visibility_off,
                            //   color: Colors.black,
                            // ),
                            child: Text(
                              passwordHide ? 'Show' : 'Hide',
                              style: appTextStyle(
                                FontWeight.w600,
                                15.0,
                                kSecondaryColor,
                              ),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  passwordHide = !passwordHide;
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
