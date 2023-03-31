import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.grey,
          Colors.white,
          Colors.white,
          Colors.deepOrange
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
    );
  }
}
