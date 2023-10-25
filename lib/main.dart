import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/Whatsapp2.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsappUi(),
    );
  }
}