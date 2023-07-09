import 'package:flutter/material.dart';

class LeaveClubScreen extends StatefulWidget {
  static const routeName = '/leave-club';
  const LeaveClubScreen({super.key});

  @override
  State<LeaveClubScreen> createState() => _LeaveClubScreenState();
}

class _LeaveClubScreenState extends State<LeaveClubScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Form(
        child: Column(
          children: [
            Text('LOL'),
          ],
        ),
      ),
    );
  }
}
