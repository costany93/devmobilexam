import 'package:devmobilexam/providers/movie.dart';

class MovieProvider {
  final List<Movie> _items = [];

  List<Movie> get items {
    return [..._items];
  }
}
