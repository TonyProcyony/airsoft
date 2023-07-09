import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:flutter/material.dart';

class GameInfoScreen extends StatefulWidget {
  static const routeName = '/game-info';
  const GameInfoScreen({super.key});

  @override
  State<GameInfoScreen> createState() => _GameInfoScreenState();
}

class _GameInfoScreenState extends State<GameInfoScreen> {
  bool play = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ContainerPadding(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGO
            Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const FlutterLogo(),
            ),
            // DATE
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '10:00 - 19/02/2023',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            // MAP AND PLAYERS
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Militibus - 7 giocatori',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            // MODE
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Death Match',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed malesuada nisl. Suspendisse.',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    play = !play;
                  });
                },
                child: play ? const Text('Non giocare') : const Text('Gioca'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
