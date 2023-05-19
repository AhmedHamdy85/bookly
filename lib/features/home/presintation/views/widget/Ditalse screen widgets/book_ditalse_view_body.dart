import 'package:bookly/core/utilty/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presintation/views/widget/Home%20screen%20wedgets/custm_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Home screen wedgets/book_rating.dart';
import 'box_action.dart';
import 'dook_detalise_app_bar.dart';
import 'similar_boox_list_viwe.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 30),
            child: BookDetaliseAppBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: CustomItem(
                imageUrl: book.volumeInfo.imageLinks!.smallThumbnail,
              ),
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Text(
            '${book.volumeInfo.title}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle30.copyWith(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              color: Colors.white.withOpacity(0.7),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          BookRating(
            rating: book.volumeInfo.averageRating ?? 0,
            count: book.volumeInfo.ratingsCount ?? 0,
          ),
          const SizedBox(
            height: 37,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 30),
            child: BookAction(),
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBooksListViwe(),
        ],
      ),
    );
  }
}
