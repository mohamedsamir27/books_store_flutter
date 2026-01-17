import 'package:bookly_test/features/home/views/widgets/custom_playbutton.dart';
import 'package:flutter/material.dart';

class FeaturedlistviewItem extends StatelessWidget {
  const FeaturedlistviewItem({super.key, this.imageUrl = ''});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 140,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                Positioned(right: 5, bottom: 5, child: CustomPlaybutton()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
