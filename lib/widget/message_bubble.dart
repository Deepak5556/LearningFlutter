import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;

  const MessageBubble({
    super.key,
    required this.message,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    final bool isRight = alignment == Alignment.centerRight;

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment:
            isRight ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            constraints: const BoxConstraints(maxWidth: 260),
            decoration: BoxDecoration(
              color: isRight ? Colors.blue : Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(12),
                topRight: const Radius.circular(12),
                bottomLeft: isRight
                    ? const Radius.circular(12)
                    : const Radius.circular(0),
                bottomRight: isRight
                    ? const Radius.circular(0)
                    : const Radius.circular(12),
              ),
            ),
            child: Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: isRight ? Colors.white : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
