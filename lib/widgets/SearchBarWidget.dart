import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key, this.searchWord});

  final String? searchWord;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: MaterialStatePropertyAll(Colors.grey[300]),
      controller: _controller,
      elevation: const MaterialStatePropertyAll(0),
      leading: const Icon(Icons.search),
      onChanged: (value) {},
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
