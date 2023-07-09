import 'package:flutter/material.dart';

import 'MemberProfileScreen.dart';

class ClubMembersScreen extends StatelessWidget {
  static const routeName = '/club-members-screen';
  const ClubMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => ListTile(
            onTap: () =>
                Navigator.of(context).pushNamed(MemberProfileScreen.routeName),
            title: const Text('Scream'),
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              // minRadius: 22,
              child: FlutterLogo(),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          ),
        ),
      ),
    );
  }
}
