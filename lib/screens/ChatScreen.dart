import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:flutter/material.dart';

import '../widgets/ChatBubbleWidget.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat-screen';
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map<String, dynamic>> messages = [
    {
      'message': 'Lorem ipsum dolor sit amet',
      'isMy': false,
      'number': 1,
    },
    {
      'message': 'Ma che cazzo stai dicendo!?',
      'isMy': false,
      'number': 2,
    },
    {
      'message': "Lascialo stare mischino",
      'isMy': false,
      'number': 3,
    },
    {
      'message': 'Vergognati!',
      'isMy': false,
      'number': 4,
    },
    {
      'message':
          'Quando e il prossimo gioco?\nHo tanta voglia di sparare!\nPau-pau-pau!!!\nRatatatatatatatatatatatatatatatatatatatatatatatata!',
      'isMy': true,
      'number': 5,
    },
    {
      'message': 'Idiota',
      'isMy': false,
      'number': 6,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ContainerPadding(
          yPadding: 10,
          widget: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final sortedMessages = messages.reversed.toList();
                      return ChatBubbleWidget(message: sortedMessages[index]);
                    }),
              ),
              Container(
                // height: 50,
                margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
                padding: const EdgeInsets.all(5),
                // alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  textAlignVertical: TextAlignVertical.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
