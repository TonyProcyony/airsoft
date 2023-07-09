import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:as_games/widgets/UserAvatarWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          icon: Icon(Icons.radar),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.forest),
          label: 'Games',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Cerca',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Club',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.military_tech),
          label: 'Profilo',
        ),
      ]),
      tabBuilder: (context, index) {
        return switch (index) {
          0 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: Center(
                  child: Text('Home Screen'),
                ),
              ),
            ),
          1 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: Center(
                  child: Text('Games Screen'),
                ),
              ),
            ),
          2 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: Center(
                  child: Text('Search Screen'),
                ),
              ),
            ),
          3 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: Center(
                  child: Text('Club Screen'),
                ),
              ),
            ),
          4 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: SafeArea(
                  child: ContainerPadding(
                    yPadding: 10,
                    widget: Column(
                      children: [
                        UserAvatarWidget(myProfile: true),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}
