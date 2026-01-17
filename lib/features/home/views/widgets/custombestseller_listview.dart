import 'package:bookly_test/core/widgets/custom_error.dart';
import 'package:bookly_test/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_test/features/home/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_test/features/home/views/widgets/custombestselleritem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustombestsellerListview extends StatelessWidget {
  const CustombestsellerListview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Custombestselleritem(
                  item: state.books[index],
                  imageUrl:
                      state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                  title: state.books[index].volumeInfo!.title!,
                  author: state.books[index].volumeInfo!.authors![0],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomError(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
