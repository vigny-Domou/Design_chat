import 'package:chat_design/homepage.dart';
import 'package:flutter/material.dart';


const Color dGreen = Color(0xFF02ac0a6);
const Color dWhite = Colors.white;
const Color dBlack = Colors.black;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp Redesign",
      home: Homepage(
        
      ),
    );
  }
}

