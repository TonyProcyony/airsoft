import 'package:flutter/material.dart';

class ChangeClub extends StatefulWidget {
  static const routeName = '/change-club';
  const ChangeClub({super.key});

  @override
  State<ChangeClub> createState() => _ChangeClubState();
}

class _ChangeClubState extends State<ChangeClub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Change club'),
      ),
    );
  }
}
