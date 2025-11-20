import 'package:flutter/material.dart';
import 'package:sample_app/chat_page.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),

        // Chat route receives username dynamic value
        '/chat': (context) {
          final userName = ModalRoute.of(context)!.settings.arguments as String;
          return ChatPage(userName: userName);
        },
      },
    );
  }
}
