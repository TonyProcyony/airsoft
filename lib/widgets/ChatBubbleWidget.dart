import 'package:flutter/material.dart';

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({super.key, required this.message});

  final Map<String, dynamic> message;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundColor: Colors.purple,
            child: FlutterLogo(),
          ),
          Flexible(
            child: Container(
              constraints: const BoxConstraints(
                minHeight: 26,
                maxHeight: 300,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor.withOpacity(0.5),
              ),
              margin: const EdgeInsets.only(
                left: 10,
                right: 30,
              ),
              padding: const EdgeInsets.all(8),
              child: Text(
                message['message'],
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
