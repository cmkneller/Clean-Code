/// [File] item_data_source.dart
///
/// This file holds an abstract [ItemDataSource] class.
/// this will be implemented to interact with an external api for
/// item operations
///
/// [Author] Pascal Bibby
/// [Date] March 6, 2024
library;

import '../../models/item_model.dart';


abstract class ItemDataSource {
  /// Fetches an item
  ///
  /// Accepts [String] url
  /// Returns an [ItemModel]
  Future<ItemModel> fetchItem(
      {required String itemUrl});


}