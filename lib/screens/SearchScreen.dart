import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ContainerPadding(
        widget: Column(
          children: [
            TextField(),
          ],
        ),
      ),
    );
  }
}
