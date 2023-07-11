import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:as_games/widgets/SearchBarWidget.dart';
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
        yPadding: 5,
        widget: Column(
          children: [
            SearchBarWidget(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => Container(
                    color: Colors.indigo,
                    // height: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
