import 'package:bookly_test/core/utils/styles.dart';
import 'package:bookly_test/features/home/views/widgets/custom_AppBar.dart';
import 'package:bookly_test/features/home/views/widgets/custombestseller_listview.dart';
import 'package:bookly_test/features/home/views/widgets/featuredbooks_listview.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppbar(),
              ),
              FeaturedbooksListview(),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 8),
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        SliverFillRemaining(child: CustombestsellerListview()),
      ],
    );
  }
}
