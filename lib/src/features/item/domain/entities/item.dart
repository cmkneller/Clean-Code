/// [File] item.dart
///
/// This file holds a [item] class used to
/// represent an item
///
/// [Author] Pascal Bibby
/// [Date] March 6, 2024
///
library;

import 'package:cleanproject/src/core/shared/entities/url.dart';
import 'package:equatable/equatable.dart';

class Item extends Equatable{
  final String uid;
  final String title;
  final String text1;
  final String text2;
  final Url imgurl;

  const Item({required this.uid, required this.title, required this.text1, required this.text2, required this.imgurl});
  
  @override
  List<Object?> get props => [uid,title,text1,text2,imgurl];
} 

class NullItem extends Item {
  const NullItem():super(imgurl: const NullUrl(), text1: "", text2: "", title: "", uid: ""); 
  
  }
