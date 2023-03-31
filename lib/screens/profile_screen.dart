import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../widgets/background_color.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          elevation: 10,
          title: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/CAND_logo.png")),
          centerTitle: true),
      body: Stack(
        children: [
          const BackgroundColor(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Emir.jpg'),
                    radius: 40,
                  ),
                ),
                Divider(
                  height: 60,
                  color: Colors.black,
                ),
                PhoneNumberInfo(),
                FullNameInfo(),
                AdressInfo(),
                BloodTypeInfo(),
                ChronicInfo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChronicInfo extends StatelessWidget {
  const ChronicInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Chronic Disease", style: boxLabel),
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
                  Icons.health_and_safety,
                  color: Theme.of(context).iconTheme.color,
                ),
                labelText: "No",
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class BloodTypeInfo extends StatelessWidget {
  const BloodTypeInfo({
    super.key,
  });

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
            keyboardType: TextInputType.phone,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.bloodtype,
                  color: Theme.of(context).iconTheme.color,
                ),
                labelText: "A+",
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class AdressInfo extends StatelessWidget {
  const AdressInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Adress", style: boxLabel),
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
                  Icons.location_city,
                  color: Theme.of(context).iconTheme.color,
                ),
                labelText: "Batikent,Tepebasi,Eskisehir,Turkey",
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class FullNameInfo extends StatelessWidget {
  const FullNameInfo({
    super.key,
  });

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
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Theme.of(context).iconTheme.color,
                ),
                labelText: "Emircan Ertürk",
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}

class PhoneNumberInfo extends StatelessWidget {
  const PhoneNumberInfo({
    super.key,
  });

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
                labelText: "+9055555555",
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                hintStyle: const TextStyle(color: Colors.white38)),
          ),
        ),
      ],
    );
  }
}
