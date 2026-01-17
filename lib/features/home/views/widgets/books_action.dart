import 'package:bookly_test/core/widgets/custombuttton.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Custombuttton(
              text: "Free",
              backgroundColor: Colors.white,
              textColor: Colors.black,
              roundedRectangleBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
            ),
          ),
          Expanded(
            child: Custombuttton(
              text: "Preview",
              fontSize: 16,
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              roundedRectangleBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
