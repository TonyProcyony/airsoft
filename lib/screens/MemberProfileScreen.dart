import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:as_games/widgets/UserAvatarWidget.dart';
import 'package:flutter/material.dart';

import '../widgets/PostWidget.dart';

class MemberProfileScreen extends StatelessWidget {
  static const routeName = '/member-profile-screen';
  const MemberProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ContainerPadding(
          widget: Column(
            children: [
              const UserAvatarWidget(
                myProfile: false,
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
      ),
    );
  }
}
