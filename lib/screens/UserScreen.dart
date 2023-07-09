import 'package:as_games/widgets/PostWidget.dart';
import 'package:as_games/widgets/UserAvatarWidget.dart';
import 'package:flutter/material.dart';

import '../widgets/ContainerPadding.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ContainerPadding(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const UserAvatarWidget(
              myProfile: true,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) => const PostWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
