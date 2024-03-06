/// [File] impl_item_data_source.dart
///
/// This file holds an implemented [ItemDataSource] class.
/// this will be implemented to interact with an external api for
/// item operations
///
/// [Author] Pascal Bibby
/// [Date] March 6, 2024
library;

import 'package:cleanproject/src/features/item/data/models/item_model.dart';

import '../abstract/item_data_source.dart';


class ImplItemDataSource implements ItemDataSource{
  @override
  Future<ItemModel> fetchItem({required String itemUrl}) {
    // TODO: implement fetchItem
    throw UnimplementedError();
  }
  
}