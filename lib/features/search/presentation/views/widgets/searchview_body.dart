import 'package:bookly_test/features/search/presentation/views/widgets/search_view_listview.dart';
import 'package:bookly_test/features/search/presentation/views/widgets/search_view_textfield.dart';
import 'package:flutter/material.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SearchViewTextfield(),
                  SizedBox(
                    height: 16,
                  ),
            ],
          ),
        ),
        SearchViewListview(),
      ],
    );
  }
}
