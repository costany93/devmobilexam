import 'package:devmobilexam/providers/vod_most_popular.dart';

class VodMostPopularProvider {
  final List<VodMostPopular> _items = [];

  List<VodMostPopular> get items {
    return [..._items];
  }
}
