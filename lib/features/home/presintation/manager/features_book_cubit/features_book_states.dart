import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class FeaturesBooksStates {}

class FeaturesBookInitialState extends FeaturesBooksStates {}

class FeaturesBookLoadingState extends FeaturesBooksStates {}

class FeaturesBookSuccesState extends FeaturesBooksStates {
  final List<BookModel> books;

  FeaturesBookSuccesState(this.books);
}

class FeaturesBookErorrState extends FeaturesBooksStates {
  final String erorr;

  FeaturesBookErorrState(this.erorr);
}
