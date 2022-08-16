
import 'package:devmobilexam/providers/vod_religion_movies.dart';

class VodReligionProvider {
  final List<VodReligionMovies> _items = [];

  List<VodReligionMovies> get items {
    return [..._items];
  }
}
