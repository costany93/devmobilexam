import '../providers/vod_latest_added_title.dart';

class VodLatestAddedProvider {
  final List<VodLatestAddedTitle> _items = [];

  List<VodLatestAddedTitle> get items {
    return [..._items];
  }
}
