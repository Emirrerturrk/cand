import 'package:flutter/material.dart';

import '../widgets/background_color.dart';
import '../widgets/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        children: const [BackgroundColor(), PageConstants()],
      ),
    );
  }
}

class PageConstants extends StatelessWidget {
  const PageConstants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const FastButtons(),
          Column(
            children: [
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Center(
                      child: Text(
                    "Eskisehir,Turkey / Earthquake Zone",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
                ),
              ),
            ],
          ),
          const BluetoothActiveButton(),
          const SizedBox(
            height: 10,
          ),
          const OtherScreenButtons(),
          const SizedBox(
            height: 10,
          ),
          const OtherScreenButtonsSecondLine(),
          const SizedBox(
            height: 50,
          ),
          const GmapsSafeArea(),
          const UpdateLocation(),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
