import 'package:as_games/screens/ChatScreen.dart';
import 'package:as_games/screens/ClubMembersScreen.dart';
import 'package:as_games/screens/MapsScreen.dart';
import 'package:as_games/widgets/ClubAvatarWidget.dart';
import 'package:as_games/widgets/ContainerPadding.dart';
import 'package:as_games/widgets/PostWidget.dart';
import 'package:flutter/material.dart';

class ClubScreen extends StatelessWidget {
  const ClubScreen({super.key});

  final bool _pinned = false;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ContainerPadding(
          yPadding: 0,
          widget: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: _pinned,
                snap: _snap,
                floating: _floating,
                expandedHeight: 240,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ClubAvatarWidget(
                        isMember: true,
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton.icon(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(ClubMembersScreen.routeName),
                              icon: const Icon(Icons.group),
                              label: const Text('Players'),
                            ),
                            TextButton.icon(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(MapsScreen.routeName),
                              icon: const Icon(Icons.map),
                              label: const Text('Campi'),
                            ),
                            TextButton.icon(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(ChatScreen.routeName),
                              icon: const Icon(Icons.chat),
                              label: const Text('Chat'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList.builder(
                itemCount: 5,
                itemBuilder: (context, index) => const PostWidget(),
              ),
            ],
          )
          // SizedBox(
          //   height: double.infinity,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       const ClubAvatarWidget(),
          //       SizedBox(
          //         height: 50,
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             TextButton.icon(
          //               onPressed: () {},
          //               icon: const Icon(Icons.group),
          //               label: const Text('Players'),
          //             ),
          //             TextButton.icon(
          //               onPressed: () {},
          //               icon: const Icon(Icons.map),
          //               label: const Text('Campi'),
          //             ),
          //             TextButton.icon(
          //               onPressed: () {},
          //               icon: const Icon(Icons.chat),
          //               label: const Text('Chat'),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Expanded(
          //         child: ListView.builder(
          //           itemCount: 4,
          //           itemBuilder: (context, index) => const PostWidget(),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
