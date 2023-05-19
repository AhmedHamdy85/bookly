import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presintation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget/Ditalse screen widgets/book_ditalse_view_body.dart';

class BookDietalsViwe extends StatefulWidget {
  const BookDietalsViwe({super.key, required this.book});
  final BookModel book;
  @override
  State<BookDietalsViwe> createState() => _BookDietalsViweState();
}

class _BookDietalsViweState extends State<BookDietalsViwe> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .getSimilarBooks(catigory: widget.book.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetalisViewBody(
        book: widget.book,
      )),
    );
  }
}
