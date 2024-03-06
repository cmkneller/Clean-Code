/// [File] item_repository.dart
///
/// This file holds an abstract repository to communicate with the data layer
/// of the item feature
///
/// [Author] Pascal Bibby

/// [Date] March 6, 2024
library;


import '../../../../core/shared/entities/url.dart';
import '../entities/item.dart';




abstract class ItemRepository {
  /// Fetches an Item
  ///
  /// Accepts [Url] itemUrl
  /// Returns [Item] entity
  Future<Item> fetchItem({required Url itemUrl});
}
