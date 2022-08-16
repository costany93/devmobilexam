import 'package:devmobilexam/providers/vod_kids.dart';

class VodHausaProvider {
  final List<VodKids> _items = [];

  List<VodKids> get items {
    return [..._items];
  }
}
