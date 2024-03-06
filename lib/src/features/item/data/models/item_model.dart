/// [File] item_model.dart
///
/// This file holds a [ItemModel] class used to
/// represent an item
///
/// [Author] Pascal Bibby
/// [Date] March 6, 2024
///
library;

import 'package:equatable/equatable.dart';

import '../../../../core/shared/entities/url.dart';
import '../../domain/entities/item.dart';
import 'constants/item_constants.dart';

class ItemModel extends Equatable{
  final String uid;
  final String title;
  final String text1;
  final String text2;
  final String imgurl;

  const ItemModel({required this.uid, required this.title, required this.text1, required this.text2, required this.imgurl});
  
  
  /// Creates an instance of [ItemModel] from a json object
  ///
  /// Accepts [Map]
  /// Returns [ItemModel]
  factory ItemModel.fromJson(Map<String, dynamic> map) {
    return ItemModel(
        uid: map[ItemConstants.uid],
        text1: map[ItemConstants.text1],
        text2: map[ItemConstants.text2],
        title: map[ItemConstants.title],
        imgurl: map[ItemConstants.imgurl]);
  }

  /// Converts a [ItemModel] to a Map
  ///
  /// Returns [Map]
  Map<String, dynamic> toJson() {
    return {
      ItemConstants.uid: uid,
      ItemConstants.text1: text1,
      ItemConstants.text2: text2,
      ItemConstants.imgurl: imgurl,
      ItemConstants.title: title
    };
  }

  /// Creates a [ItemModel] from a [Item] entity
  ///
  /// Accepts [Item]
  /// Returns [ItemModel]
  factory ItemModel.fromEntity(Item entity) {
    return ItemModel(
        uid: entity.uid,
        text1: entity.text1,
        text2: entity.text2,
        title: entity.title,
        imgurl: entity.imgurl.urlString);
  }

  /// Creates a [Item] from an [ItemModel]
  ///
  /// Returns [Item]
  Item toEntity() {
    return Item(
        uid: uid,
        text1: text1,
        text2: text2,
        title: title,
        imgurl: Url(urlString: imgurl));
  }
 
 @override
  List<Object?> get props => [uid,title,text1,text2,imgurl];
} 


