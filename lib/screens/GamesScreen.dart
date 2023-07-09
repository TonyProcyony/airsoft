import 'package:as_games/screens/CreateGameScreen.dart';
import 'package:as_games/screens/GameInfoScreen.dart';
import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  void navigate(BuildContext context, String page) {
    Navigator.of(context).pushNamed(page);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ContainerPadding(
        yPadding: 0,
        widget: Stack(
          alignment: Alignment.center,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed(GameInfoScreen.routeName),
                    child: Column(
                      children: [
                        // LOGO
                        Container(
                          // color: Colors.black,
                          height: 100,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          child: const FlutterLogo(
                              // size: 40,
                              ),
                        ),
                        // DATE
                        const Text(
                          '10:00 - 19/02/2023',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        // MAP AND PLAYERS
                        const Text(
                          'Militibus - 7 giocatori',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            Positioned(
              bottom: 5,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Theme.of(context).primaryColor),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(CreateGameScreen.routeName),
                icon: const Icon(Icons.add_circle_outline),
                label: const Text('Crea il game'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
