import 'package:as_games/screens/ClubScreen.dart';
import 'package:as_games/screens/GamesScreen.dart';
import 'package:as_games/screens/HomeScreen.dart';
import 'package:as_games/screens/SearchScreen.dart';
import 'package:as_games/screens/UserScreen.dart';
import 'package:flutter/cupertino.dart';

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 228, 185, 105),
      ),
      home: CupertinoHomePage(),
    );
  }
}

class CupertinoHomePage extends StatefulWidget {
  const CupertinoHomePage({super.key});

  @override
  State<CupertinoHomePage> createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.game_controller),
          label: 'Games',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search),
          label: 'Cerca',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person_3_fill),
          label: 'Club',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person_fill),
          label: 'Profilo',
        ),
      ]),
      tabBuilder: (context, index) {
        return switch (index) {
          0 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: HomeScreen(),
              ),
            ),
          1 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: GamesScreen(),
              ),
            ),
          2 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: SearchScreen(),
              ),
            ),
          3 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: ClubScreen(),
              ),
            ),
          4 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: UserScreen(),
              ),
            ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}
