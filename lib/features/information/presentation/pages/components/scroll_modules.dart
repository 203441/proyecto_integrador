import 'package:flutter/material.dart';

import '../module.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> imagePaths;

  const ImageCarousel({Key? key, required this.imagePaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(left: 21, top: 0, right: 21, bottom: 0),
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemExtent: 190,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Modulos()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Image.asset(
                imagePaths[index],
                width: 175,
                height: 250,
              ),
            ),
          );
        },
      ),
    );
  }
}
