import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppbarBooksDetails extends StatelessWidget {
  const AppbarBooksDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 5, right: 5, top: 40, bottom: 16),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.close_outlined),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
