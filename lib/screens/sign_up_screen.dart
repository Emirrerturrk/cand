import 'package:flutter/material.dart';

import '../widgets/background_color.dart';
import '../widgets/signup_widgets.dart';

class PersonalSignUp extends StatefulWidget {
  const PersonalSignUp({super.key});

  @override
  State<PersonalSignUp> createState() => _PersonalSignUpState();
}

class _PersonalSignUpState extends State<PersonalSignUp> {
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
                  BloodTypeBox(),
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
