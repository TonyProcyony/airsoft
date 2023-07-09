import 'package:as_games/widgets/CircleButton.dart';
import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:as_games/widgets/PostWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerPadding(
      widget: Stack(
        children: [
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => const PostWidget(),
          ),
          const Positioned(
            bottom: 10,
            right: 5,
            child: CircleButton(),
          ),
        ],
      ),
    );
  }
}
