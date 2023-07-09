import 'package:as_games/screens/WritePostScreen.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(WritePostScreen.routeName);
        },
        style: ButtonStyle(
          shape: const MaterialStatePropertyAll(CircleBorder()),
          backgroundColor:
              MaterialStatePropertyAll(Theme.of(context).primaryColor),
          // fixedSize: MaterialStatePropertyAll(Size(50, 50)),
          // alignment: Alignment.center,
        ),
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
