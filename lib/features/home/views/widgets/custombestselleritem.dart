import 'package:bookly_test/core/utils/app_router.dart';
import 'package:bookly_test/core/utils/styles.dart';
import 'package:bookly_test/features/home/data/models/book_models/item.dart';
import 'package:bookly_test/features/home/views/widgets/bookingrate.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Custombestselleritem extends StatelessWidget {
  const Custombestselleritem({
    super.key,
    this.imageUrl = '',
    this.title = '',
    this.author = '',
    required this.item,
  });

  final String imageUrl;
  final String title;
  final String author;
  final Item item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails, extra: item);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 110,
              child: AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(title, style: Styles.textStyle20, maxLines: 2),
                  ),
                  SizedBox(height: 3),
                  Text(
                    author,
                    style: Styles.textStyle14.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Bookingrate(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
