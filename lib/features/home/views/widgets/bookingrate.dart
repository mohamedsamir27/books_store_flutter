import 'package:bookly_test/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookingrate extends StatelessWidget {
  const Bookingrate({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 18),
        SizedBox(width: 3.5),
        Text("4.8", style: Styles.textStyle16),
        SizedBox(width: 3.5),
        Text("(2365)", style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
