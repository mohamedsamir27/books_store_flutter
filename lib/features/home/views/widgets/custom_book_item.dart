import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, this.imageUrl = ''});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(imageUrl)),
          ),
        ),
      ),
    );
  }
}
