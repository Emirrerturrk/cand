import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../widgets/background_color.dart';
import 'duty_signup.dart';
import 'login_screen.dart';
import 'sign_up_screen.dart';

class SignUpType extends StatefulWidget {
  const SignUpType({super.key});

  @override
  State<SignUpType> createState() => _SignUpTypeState();
}

class _SignUpTypeState extends State<SignUpType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const BackgroundColor(),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              const CandLogo(),
              Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10, backgroundColor: Colors.orange),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PersonalSignUp()));
                      },
                      child: const Text(
                        "Personal Sign Up",
                        style: boxLabel,
                      ))),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10, backgroundColor: Colors.orange),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const DutySignup();
                        },
                      ));
                    },
                    child: const Text(
                      "Duty Personnel Sign Up",
                      style: boxLabel,
                    )),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
