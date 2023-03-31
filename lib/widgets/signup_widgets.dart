import 'package:flutter/material.dart';

import '../screens/login_screen.dart';
import '../utilities/constants.dart';

class FullNameBox extends StatefulWidget {
  const FullNameBox({
    super.key,
  });

  @override
  State<FullNameBox> createState() => _FullNameBoxState();
}

class _FullNameBoxState extends State<FullNameBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Full Name", style: boxLabel),
        const SizedBox(
          height: 2,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecoration,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.name,
            style: boxLabel,
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Theme.of(context).iconTheme.color,
                ),
                hintText: "Enter Your Full Name",
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class RegisterButton extends StatefulWidget {
  const RegisterButton({
    super.key,
  });

  @override
  State<RegisterButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const LoginScreen();
              },
            ));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Text(
            "Register",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ));
  }
}

class PasswordBox extends StatefulWidget {
  const PasswordBox({
    super.key,
  });

  @override
  State<PasswordBox> createState() => _PasswordBoxState();
}

class _PasswordBoxState extends State<PasswordBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Password", style: boxLabel),
        const SizedBox(
          height: 2,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecoration,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.key,
                  color: Theme.of(context).iconTheme.color,
                ),
                hintText: "Enter Your Password",
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class BloodTypeBox extends StatefulWidget {
  const BloodTypeBox({
    super.key,
  });

  @override
  State<BloodTypeBox> createState() => _BloodTypeBoxState();
}

class _BloodTypeBoxState extends State<BloodTypeBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Blood Type", style: boxLabel),
        const SizedBox(
          height: 2,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecoration,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.name,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.bloodtype,
                  color: Theme.of(context).iconTheme.color,
                ),
                hintText: "Enter Your Blood Type",
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class LocationBox extends StatefulWidget {
  const LocationBox({
    super.key,
  });

  @override
  State<LocationBox> createState() => _LocationBoxState();
}

class _LocationBoxState extends State<LocationBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Location", style: boxLabel),
        const SizedBox(
          height: 2,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecoration,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.streetAddress,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.location_city,
                  color: Theme.of(context).iconTheme.color,
                ),
                hintText: "City,Country",
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class DateOfBirthBox extends StatefulWidget {
  const DateOfBirthBox({
    super.key,
  });

  @override
  State<DateOfBirthBox> createState() => _DateOfBirthBoxState();
}

class _DateOfBirthBoxState extends State<DateOfBirthBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Date Of Birth", style: boxLabel),
        const SizedBox(
          height: 2,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecoration,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.datetime,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.calendar_month,
                  color: Theme.of(context).iconTheme.color,
                ),
                hintText: "DD/MM/YY",
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class PhoneNumberBox extends StatefulWidget {
  const PhoneNumberBox({
    super.key,
  });

  @override
  State<PhoneNumberBox> createState() => _PhoneNumberBoxState();
}

class _PhoneNumberBoxState extends State<PhoneNumberBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Phone Number", style: boxLabel),
        const SizedBox(
          height: 2,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecoration,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.phone,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Theme.of(context).iconTheme.color,
                ),
                hintText: "Enter Your Phone Number",
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class EstablishmentBox extends StatefulWidget {
  const EstablishmentBox({super.key});

  @override
  State<EstablishmentBox> createState() => _EstablishmentBoxState();
}

class _EstablishmentBoxState extends State<EstablishmentBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Establishment", style: boxLabel),
        const SizedBox(
          height: 2,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecoration,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.phone,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.home,
                  color: Theme.of(context).iconTheme.color,
                ),
                hintText: "Enter Your Establishment",
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}
