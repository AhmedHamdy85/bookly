import 'package:flutter/material.dart';
import 'widget/Ditalse screen widgets/book_ditalse_view_body.dart';

class BookDietalsViwe extends StatelessWidget {
  const BookDietalsViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetalisViewBody()),
    );
  }
}
