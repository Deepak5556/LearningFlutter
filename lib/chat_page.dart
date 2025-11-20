import 'package:flutter/material.dart';
import 'package:sample_app/widget/chat_bubble.dart';
import 'package:sample_app/widget/message_bubble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hi $userName",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
              print("Logout clicked");
            },
            icon: const Icon(Icons.logout, color: Colors.red),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return MessageBubble(
                  message: "Hello! Welcome to the Chat App",
                  alignment: index % 2 == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                );
              },
            ),
          ),

          const ChatBubble(),
        ],
      ),
    );
  }
}
