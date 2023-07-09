import 'package:as_games/screens/AddMapScreen.dart';
import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:flutter/material.dart';

import '../widgets/MapWidget.dart';

class MapsScreen extends StatefulWidget {
  static const routeName = '/maps-screen';
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton.icon(
            onPressed: () =>
                Navigator.of(context).pushNamed(AddMapScreen.routeName),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: const Text(
              'Aggiungi campo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: ContainerPadding(
        widget: ListView.builder(
          itemCount: 3,
          itemBuilder: (cotext, index) => const MapWidget(),
        ),
      ),
    );
  }
}
