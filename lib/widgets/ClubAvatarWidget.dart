import 'package:flutter/material.dart';

class ClubAvatarWidget extends StatelessWidget {
  const ClubAvatarWidget({super.key, required this.isMember});

  final bool isMember;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 40,
                    child: FlutterLogo(
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            'Scutum',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            'Raiting: 24',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: isMember
                    ? Container()
                    : ElevatedButton(
                        onPressed: () {},
                        child: const Text('Segui'),
                      ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet viverra enim. Morbi tellus urna, lobortis ut tempus in.'),
          ),
        ],
      ),
    );
  }
}
