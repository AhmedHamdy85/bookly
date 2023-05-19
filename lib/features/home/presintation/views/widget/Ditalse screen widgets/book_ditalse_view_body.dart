import 'package:bookly/core/utilty/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/presintation/views/widget/Home%20screen%20wedgets/custm_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Home screen wedgets/book_rating.dart';
import 'box_action.dart';
import 'dook_detalise_app_bar.dart';
import 'similar_boox_list_viwe.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

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
            child: const Padding(
              padding: EdgeInsets.only(right: 30),
              child: CustomItem(
                imageUrl:
                    'https://th.bing.com/th/id/OIP.avb9nDfw3kq7NOoP0grM4wHaEK?pid=ImgDet&rs=1',
              ),
            ),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jurgle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              color: Colors.white.withOpacity(0.7),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            rating: 4,
            count: 5,
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
