import 'dart:io';

import 'package:as_games/screens/SettingsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserAvatarWidget extends StatefulWidget {
  const UserAvatarWidget({super.key, required this.myProfile});

  final bool? myProfile;

  @override
  State<UserAvatarWidget> createState() => _UserAvatarWidgetState();
}

class _UserAvatarWidgetState extends State<UserAvatarWidget> {
  bool follow = false;

  final isIos = Platform.isIOS;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 40,
                child: FlutterLogo(
                  size: 35,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                      child: Text(
                        'Scream',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        'Sniper',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        'Membro di Scutum SAT',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          widget.myProfile!
              ? isIos
                  ? CupertinoButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed(SettingsScreen.routeName),
                      child: const Icon(Icons.settings_outlined),
                    )
                  : IconButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed(SettingsScreen.routeName),
                      icon: const Icon(Icons.settings_outlined),
                    )
              : follow
                  ? isIos
                      ? CupertinoButton(
                          child: const Icon(Icons.close),
                          onPressed: () => setState(() {
                            follow = false;
                          }),
                        )
                      : OutlinedButton(
                          onPressed: () => setState(() {
                            follow = false;
                          }),
                          child: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        )
                  : isIos
                      ? CupertinoButton.filled(
                          child: const Text('Segui'),
                          onPressed: () => setState(() {
                            follow = true;
                          }),
                        )
                      : ElevatedButton(
                          onPressed: () => setState(() {
                            follow = true;
                          }),
                          child: const Text('Segui'),
                        ),
        ],
      ),
    );
  }
}
