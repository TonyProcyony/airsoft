import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key, this.text, required this.func});

  final String? text;

  final void Function() func;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        func();
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(250, 223, 174, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(text!),
      ),
    );
  }
}
