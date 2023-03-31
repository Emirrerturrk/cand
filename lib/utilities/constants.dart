import 'package:flutter/material.dart';

final boxDecoration = BoxDecoration(
  color: Colors.orange,
  borderRadius: BorderRadius.circular(10.0),
  // ignore: prefer_const_literals_to_create_immutables
  boxShadow: [
    // ignore: prefer_const_constructors
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: const Offset(0, 2),
    ),
  ],
);

const boxLabel = TextStyle(color: Colors.black);

final elevatedButton = ElevatedButton.styleFrom(
    fixedSize: const Size(90, 50),
    backgroundColor: Colors.deepOrange,
    foregroundColor: Colors.white);
