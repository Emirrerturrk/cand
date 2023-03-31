// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/background_color.dart';
import '../widgets/login_screen_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundColor(),
        SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CandLogo(),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PhoneNumberBox(),
                SizedBox(
                  height: 20,
                ),
                PasswordBox(),
                SizedBox(
                  height: 50,
                ),
                ForgotPassword(),
                SizedBox(
                  height: 10,
                ),
                LoginButton(),
                SizedBox(
                  height: 40,
                ),
                SignupTextBtn()
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class CandLogo extends StatelessWidget {
  const CandLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      height: 200,
      image: AssetImage("assets/CAND_logo.png"),
      //image: NetworkImage("https://picsum.photos/200")
    );
  }
}
