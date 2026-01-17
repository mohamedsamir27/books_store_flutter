import 'package:bookly_test/core/utils/styles.dart';
import 'package:bookly_test/features/home/data/models/book_models/item.dart';
import 'package:bookly_test/features/home/views/widgets/AppBar_books_details.dart';
import 'package:bookly_test/features/home/views/widgets/book_details_item.dart';
import 'package:bookly_test/features/home/views/widgets/bookingrate.dart';
import 'package:bookly_test/features/home/views/widgets/books_action.dart';
import 'package:bookly_test/features/home/views/widgets/similarl_listview.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppbarBooksDetails(),
                BookDetailsItem(
                  imageUrl: item.volumeInfo!.imageLinks!.thumbnail!,
                ),
                SizedBox(height: 6),
                Text(
                  item.volumeInfo!.title!,
                  style: Styles.textStyle30.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  item.volumeInfo!.authors![0],
                  style: Styles.textStyle16.copyWith(color: Colors.grey),
                ),
                SizedBox(height: 5),
                Bookingrate(mainAxisAlignment: MainAxisAlignment.center),
                SizedBox(height: 10),
                BooksAction(),
                Expanded(child: SizedBox(height: 15)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("You can also like", style: Styles.textStyle18),
                ),
                SizedBox(height: 5),
                SimilarBooksListView(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
