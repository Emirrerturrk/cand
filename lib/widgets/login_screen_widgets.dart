import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/sign_up_choose_screen.dart';
import '../utilities/constants.dart';

class PhoneNumberBox extends StatelessWidget {
  const PhoneNumberBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Phone Number", style: boxLabel),
        const SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecoration,
          height: 60,
          // ignore: prefer_const_constructors
          child: TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(color: Theme.of(context).primaryColor),
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                // ignore: prefer_const_constructors
                prefixIcon:
                    Icon(Icons.phone, color: Theme.of(context).iconTheme.color),
                hintText: "Enter Your Phone Number",
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class PasswordBox extends StatelessWidget {
  const PasswordBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Password", style: boxLabel),
        const SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecoration,
          height: 60,
          // ignore: prefer_const_constructors
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: Colors.white),
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                // ignore: prefer_const_constructors
                prefixIcon: Icon(
                  Icons.key,
                  color: Theme.of(context).iconTheme.color,
                ),
                hintText: "*****",
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        child: const Text("Forgot Password?", style: boxLabel));
  }
}

class LoginButton extends StatefulWidget {
  const LoginButton({
    super.key,
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return HomeScreen();
            },
          ));
        },
        // ignore: sort_child_properties_last
        child: const Text("Log In", style: boxLabel),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}

class SignupTextBtn extends StatefulWidget {
  const SignupTextBtn({
    super.key,
  });

  @override
  State<SignupTextBtn> createState() => _SignupTextBtnState();
}

class _SignupTextBtnState extends State<SignupTextBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Don't have an Account?"),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpType()));
            },
            child: const Text("Sign Up",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
