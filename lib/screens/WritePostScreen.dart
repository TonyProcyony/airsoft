import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:flutter/material.dart';

class WritePostScreen extends StatefulWidget {
  static const routeName = '/write-post';
  const WritePostScreen({super.key});

  @override
  State<WritePostScreen> createState() => _WritePostScreenState();
}

class _WritePostScreenState extends State<WritePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ContainerPadding(
        yPadding: 10,
        widget: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  maxLines: 5,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.attach_file,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Scrivi il post"),
      ),
    );
  }
}
