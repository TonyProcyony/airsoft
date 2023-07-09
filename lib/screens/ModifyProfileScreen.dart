import 'package:flutter/material.dart';

class ModifyProfile extends StatefulWidget {
  static const routeName = '/modify_profile';
  const ModifyProfile({super.key});

  @override
  State<ModifyProfile> createState() => _ModifyProfileState();
}

class _ModifyProfileState extends State<ModifyProfile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Modify profile'),
      ),
    );
  }
}
