/// [File] item_state.dart
///
/// This file holds a [ItemState] class used in
/// the home bloc
///
/// [Author] Pascal Bibby
/// [Date] March 6, 2024

import 'package:equatable/equatable.dart';
import '../../../../core/utility/submission_status.dart';
import '../../domain/entities/item.dart';

class ItemState extends Equatable {
  final AsyncStatus status;
  final Item item;
  const ItemState({
    required this.status,
    required this.item,
  });

  /// Creates an initial state
  ///
  /// Returns [ItemState]
  factory ItemState.initial() => const ItemState(
        status: AsyncStatus.ready,
        item: NullItem(),
      );

  @override
  List<Object> get props => [
        status,
        item,
      ];

  /// Creates a copy of the item state
  ///
  /// Accepts any field and...
  /// returns a copied version of [ItemState] with the fields changed
  ItemState copyWith({
    AsyncStatus? status,
    Item? item,
  }) {
    return ItemState(
      status: status ?? this.status,
      item: item ?? this.item,
    );
  }
}
