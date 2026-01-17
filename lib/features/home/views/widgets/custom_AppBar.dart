import 'package:bookly_test/core/utils/app_router.dart';
import 'package:bookly_test/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 5, right: 5, top: 30, bottom: 16),
      child: Row(
        children: [
          Image.asset(AssetData.logo,
          height: 18,
          ),
          Spacer(),
          IconButton(
            onPressed: (){
              GoRouter.of(context).push(AppRouter.kSearchView);
            }, 
            icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
            ),
            ),
        ],
      ),
      );
  }
}