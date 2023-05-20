import 'package:bookly/features/home/presintation/views/widget/Home%20screen%20wedgets/custm_list_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constuns.dart';
import '../../../../../../core/utilty/assits.dart';
import '../../../../../../core/utilty/styles.dart';
import '../../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';

class BookListViweItem extends StatelessWidget {
  const BookListViweItem({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetalseViwe', extra: book);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomItem(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail ??
                    'https://th.bing.com/th/id/OIP.AC9frN1qFnn-I2JCycN8fwHaEK?pid=ImgDet&rs=1'),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo.title ?? 'programing',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectrafine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo.authors?[0] ?? 'jhfgty',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        BookRating(
                          rating: book.volumeInfo.averageRating ?? 0,
                          count: book.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
