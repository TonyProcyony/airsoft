import 'package:as_games/screens/ChangeClubScreen.dart';
import 'package:as_games/screens/ModifyProfileScreen.dart';
import 'package:as_games/screens/LeaveClubScreen.dart';
import 'package:as_games/widgets/SettingWidget.dart';
import 'package:flutter/material.dart';

class SettingsListWidget extends StatelessWidget {
  SettingsListWidget({super.key});

  final List<String> settings = [
    'Modifica profilo',
    'Cambia club',
    'Lascia club',
    'Privacy Policy',
    'Termini e condizioni',
  ];

  final List<String> routes = [
    ModifyProfile.routeName,
    ChangeClub.routeName,
    LeaveClubScreen.routeName,
  ];

  void navigate(BuildContext context, int index) {
    Navigator.of(context).pushNamed(routes[index]);
    print(routes[index]);
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // child: Column(
      //     children: settings
      //         .map((e) => SettingWidget(func: () => navigate(routes[])))
      //         .toList())
      child: ListView.builder(
        itemCount: settings.length,
        itemBuilder: (context, index) => SettingWidget(
          text: settings[index],
          func: () => navigate(context, index),
        ),
      ),
    );
  }
}
