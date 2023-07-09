import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool likeIcon = false;
  bool thumbIcon = false;

  void like() {
    setState(() {
      likeIcon = !likeIcon;
      if (likeIcon == true) thumbIcon = false;
    });
  }

  void dislike() {
    setState(() {
      thumbIcon = !thumbIcon;
      if (thumbIcon == true) likeIcon = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: () => like(),
      child: Container(
        // height: 330,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 22,
                    minRadius: 16,
                    backgroundColor: Colors.red,
                    child: FlutterLogo(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Scutum SaT',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed malesuada nisl. Suspendisse.',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Image.network(
              'https://images.unsplash.com/photo-1448375240586-882707db888b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () => like(),
                  icon: likeIcon == false
                      ? const Icon(Icons.favorite_outline)
                      : const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                ),
                IconButton(
                  onPressed: () => dislike(),
                  icon: thumbIcon == false
                      ? const Icon(
                          Icons.thumb_down_alt_outlined,
                          size: 26,
                        )
                      : const Icon(
                          Icons.thumb_down_alt,
                          color: Colors.grey,
                          size: 26,
                        ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
