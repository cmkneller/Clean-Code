/// [File] item_events.dart
///
/// This file holds a number of [ItemEvent] classes used in
/// the home bloc
///
/// [Author] Pascal Bibby
/// [Date] March 6, 2024
///

import 'package:equatable/equatable.dart';

import '../../../../core/shared/entities/url.dart';

/// Base class for the item event
class ItemEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Initialises the bloc
class InitItemEvent extends ItemEvent{

  final Url itemUrl;

  InitItemEvent({required this.itemUrl});
      @override
        List<Object?> get props => [itemUrl];
}

class ClearEvent extends ItemEvent{

}
  
