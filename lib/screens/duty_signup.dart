import 'package:flutter/material.dart';

import '../widgets/background_color.dart';
import '../widgets/signup_widgets.dart';

class DutySignup extends StatefulWidget {
  const DutySignup({super.key});

  @override
  State<DutySignup> createState() => _DutySignupState();
}

class _DutySignupState extends State<DutySignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundColor(),
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FullNameBox(),
                  PhoneNumberBox(),
                  DateOfBirthBox(),
                  LocationBox(),
                  EstablishmentBox(),
                  PasswordBox(),
                  SizedBox(
                    height: 30,
                  ),
                  RegisterButton()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
