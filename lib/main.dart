import 'package:flutter/material.dart';
// import 'package:sample_app/chat_page.dart';
import 'package:sample_app/login_page.dart';

void main() {
  runApp(const SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginPage(),
    );
  }
}
 