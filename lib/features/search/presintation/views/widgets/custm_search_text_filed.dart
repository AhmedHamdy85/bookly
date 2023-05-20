import 'package:bookly/features/search/presintation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextFiled extends StatelessWidget {
  CustomSearchTextFiled({super.key});
  var searchControlar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchControlar,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Search',
          suffix: Icon(
            Icons.search,
            color: Colors.white,
          )),
      onChanged: (value) {
        SearchCubit.get(context).getSimilarBooks(kword: searchControlar.text);
      },
    );
  }
}
