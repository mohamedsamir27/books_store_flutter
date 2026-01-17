import 'package:flutter/material.dart';

class CustomPlaybutton extends StatelessWidget {
  const CustomPlaybutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(185, 175, 175, 0.784)
          ),
        child: Center(
          child: Icon(
            Icons.play_arrow_rounded,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}