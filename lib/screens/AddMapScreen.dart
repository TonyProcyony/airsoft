import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:flutter/material.dart';

class AddMapScreen extends StatefulWidget {
  static const routeName = '/add-map-screen';
  const AddMapScreen({super.key});

  @override
  State<AddMapScreen> createState() => _AddMapScreenState();
}

class _AddMapScreenState extends State<AddMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ContainerPadding(
            widget: Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Nome della mappa',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[700]!,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Icon(
                          Icons.map,
                          color: Colors.grey[700],
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[700]!,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Google Maps Url',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[700]!,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Icon(
                          Icons.link,
                          color: Colors.grey[700],
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[700]!,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      color: Colors.grey[400],
                      height: 220,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            size: 40,
                          ),
                          const Text('Aggiungi la foto'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Aggiungi campo'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
