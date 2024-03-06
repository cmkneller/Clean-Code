/// [File] impl_item_repository.dart
///
/// This file holds an implemented repository to communicate with the data layer
/// of the item feature
///
/// [Author] Pascal Bibby

/// [Date] March 6, 2024
library;


import 'package:cleanproject/src/features/item/domain/entities/item.dart';

import '../../../../config/locator.dart';
import '../../../../core/shared/entities/url.dart';
import '../../domain/repositories/item_repository.dart';
import '../data-sources/abstract/item_data_source.dart';
import '../models/item_model.dart';




class ImplItemRepository implements ItemRepository {
  /// Fetches an Item
  ///
  /// Accepts [Url] itemUrl
  /// Returns [Item] entity 
  final ItemDataSource dataSource = getIt.get<ItemDataSource>();
  @override
  
  Future<Item> fetchItem({required Url itemUrl}) async {
    ItemModel itemModel = await dataSource.fetchItem(itemUrl: itemUrl.urlString);
    return itemModel.toEntity();
  }

}
