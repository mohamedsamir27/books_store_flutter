import 'package:bookly_test/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Custombuttton extends StatelessWidget {
  const Custombuttton({super.key,
  required this.backgroundColor,
  required this.text,
  required this.textColor,
  this.roundedRectangleBorder,
  this.fontSize,
  });

  final Color backgroundColor;
  final String text;
  final Color textColor;
  final double? fontSize;
  final RoundedRectangleBorder? roundedRectangleBorder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:48,
      child: TextButton(
        onPressed: (){}, 
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: roundedRectangleBorder?? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
        ),
    );
  }
}