import 'package:bookly_test/features/home/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SearchViewListview extends StatelessWidget {
  const SearchViewListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 5, (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CustomBookItem(),
        );
      }),
    );
  }
}
