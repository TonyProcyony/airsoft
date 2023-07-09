import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Dolianova',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Vedi sulla mappa'),
                ),
              ],
            ),
          ),
          Image.network(
              'https://cloudfront-us-east-1.images.arcpublishing.com/mco/KPKGP3YSGZCMJEA2RZU7EVXGEU.jpg')
        ],
      ),
    );
  }
}
