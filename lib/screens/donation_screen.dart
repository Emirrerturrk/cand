import 'dart:ui';

import 'package:flutter/material.dart';

class Donation extends StatefulWidget {
  const Donation({super.key});

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          elevation: 10,
          title: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/CAND_logo.png")),
          centerTitle: true),
      body: Stack(
        children: [
          const DonatePrices(),
          Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/deprem.jpeg",
                ),
              ),
              const Text(
                "Hatay,Turkey",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    style: TextStyle(fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                    "You can choose any amount you wish to donate below to cover the material damages caused by the 6.4 magnitude earthquake in Hatay!"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DonatePrices extends StatelessWidget {
  const DonatePrices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 400),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              GlassCard(
                title: "Donate",
                subtitle: "\$5",
                icon: Icon(
                  Icons.attach_money_outlined,
                  color: Colors.deepOrange,
                  size: 30,
                ),
              ),
              GlassCard(
                title: "Donate",
                subtitle: "\$10",
                icon: Icon(
                  Icons.attach_money_outlined,
                  color: Colors.deepOrange,
                  size: 30,
                ),
              ),
              GlassCard(
                title: "Donate",
                subtitle: "\$15",
                icon: Icon(
                  Icons.attach_money_outlined,
                  color: Colors.deepOrange,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SearchInputFb2(
            searchController: TextEditingController(),
            hintText: "Please Enter Amount")
      ],
    );
  }
}

class GlassCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icon;
  const GlassCard(
      {required this.title,
      required this.subtitle,
      required this.icon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      child: SizedBox(
        width: 125,
        height: 125,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              height: 7.5,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GlassContainer extends StatelessWidget {
  final Widget child;

  const GlassContainer({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          // width: 150.0,
          // height: 100.0,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: .25),
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.grey),
          child: child,
        ),
      ),
    );
  }
}

class SearchInputFb2 extends StatelessWidget {
  final TextEditingController searchController;
  final String hintText;

  const SearchInputFb2(
      {required this.searchController, required this.hintText, Key? key})
      : super(
          key: key,
        );
  final primaryColor = Colors.deepOrange;
  final secondaryColor = Colors.orangeAccent;
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [(Colors.deepOrange), (Colors.deepOrangeAccent)]),
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
      child: TextField(
        controller: searchController,
        textAlign: TextAlign.center,
        onChanged: (value) {},
        style: TextStyle(fontSize: 14, color: accentColor),
        decoration: InputDecoration(
          // prefixIcon: Icon(Icons.email),
          prefixIcon: Icon(Icons.price_change, size: 20, color: accentColor),
          filled: true,
          fillColor: Colors.transparent,
          hintText: hintText,
          hintStyle: TextStyle(color: accentColor.withOpacity(.75)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}
