import 'dart:io';

import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class WritePostScreen extends StatefulWidget {
  static const routeName = '/write-post';
  const WritePostScreen({super.key});

  @override
  State<WritePostScreen> createState() => _WritePostScreenState();
}

class _WritePostScreenState extends State<WritePostScreen> {
  File? img;
  void takeImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 70,
    );
    if (image == null) {
      return;
    }
    setState(() {
      img = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crea post'),
      ),
      body: ContainerPadding(
        yPadding: 10,
        widget: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Cos\'hai di nuovo?',
                    hintStyle: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  autofocus: true,
                  minLines: 1,
                  maxLines: 5,
                ),
              ),
              img != null
                  ? SizedBox(
                      height: 220,
                      width: double.infinity,
                      child: Image.file(
                        img!,
                        fit: BoxFit.contain,
                        width: double.infinity,
                      ),
                    )
                  : Container(),
              TextButton.icon(
                onPressed: takeImage,
                icon: const Icon(
                  Icons.attach_file,
                ),
                label: const Text('Aggiungi media'),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Conividi"),
      ),
    );
  }
}
