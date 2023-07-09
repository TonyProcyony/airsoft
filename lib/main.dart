import 'package:as_games/screens/AddMapScreen.dart';
import 'package:as_games/screens/ChangeClubScreen.dart';
import 'package:as_games/screens/ChatScreen.dart';
import 'package:as_games/screens/ClubMembersScreen.dart';
import 'package:as_games/screens/ClubScreen.dart';
import 'package:as_games/screens/CreateGameScreen.dart';
import 'package:as_games/screens/GameInfoScreen.dart';
import 'package:as_games/screens/GamesScreen.dart';
import 'package:as_games/screens/HomeScreen.dart';
import 'package:as_games/screens/LeaveClubScreen.dart';
import 'package:as_games/screens/MapsScreen.dart';
import 'package:as_games/screens/MemberProfileScreen.dart';
import 'package:as_games/screens/ModifyProfileScreen.dart';
import 'package:as_games/screens/SearchScreen.dart';
import 'package:as_games/screens/SettingsScreen.dart';
import 'package:as_games/screens/UserScreen.dart';
import 'package:as_games/screens/WritePostScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';
import 'dart:io';

import 'cupertino/CupertinoApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  final isIos = Platform.isIOS;
  if (isIos) {
    runApp(const MyCupertinoApp());
  } else {
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'As Games',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 228, 185, 105),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 228, 185, 105),
          foregroundColor: Colors.white,
        ),
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          background: Colors.white,
          error: Colors.red,
          primary: Color.fromARGB(255, 228, 185, 105),
        ),
        datePickerTheme: const DatePickerThemeData(),
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 228, 185, 105)),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
        )),
        timePickerTheme: const TimePickerThemeData(
          cancelButtonStyle: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(
              Colors.black,
            ),
          ),
          confirmButtonStyle: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(
              Color.fromARGB(255, 228, 185, 105),
            ),
          ),
          dialHandColor: Color.fromARGB(255, 228, 185, 105),
          hourMinuteColor: Color.fromARGB(255, 228, 185, 105),
        ),
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
          ),
        ),
        useMaterial3: true,
      ),
      home: const NavigationPage(),
      routes: {
        AddMapScreen.routeName: (context) => const AddMapScreen(),
        ChangeClub.routeName: (context) => const ChangeClub(),
        ChatScreen.routeName: (context) => const ChatScreen(),
        ClubMembersScreen.routeName: (context) => const ClubMembersScreen(),
        CreateGameScreen.routeName: (context) => const CreateGameScreen(),
        GameInfoScreen.routeName: (context) => const GameInfoScreen(),
        LeaveClubScreen.routeName: (context) => const LeaveClubScreen(),
        MapsScreen.routeName: (context) => const MapsScreen(),
        MemberProfileScreen.routeName: (context) => const MemberProfileScreen(),
        ModifyProfile.routeName: (context) => const ModifyProfile(),
        SettingsScreen.routeName: (context) => const SettingsScreen(),
        WritePostScreen.routeName: (context) => const WritePostScreen(),
      },
    );
  }
}

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  void changeScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static const List<Widget> screens = <Widget>[
    HomeScreen(),
    GamesScreen(),
    SearchScreen(),
    ClubScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
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
            icon: Icon(Icons.groups),
            label: 'Club',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.military_tech),
            label: 'Profilo',
          ),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        iconSize: 28,
        onTap: changeScreen,
        // backgroundColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
