/// [File] item_bloc.dart
///
/// This file holds a [ItemBloc] class used to
/// handle the presentation of the item screen
///
/// [Author] Pascal
/// [Date] March 6, 2024
///

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/locator.dart';
import '../../../../core/utility/failure.dart';
import '../../../../core/utility/submission_status.dart';
import '../../domain/entities/item.dart';
import '../../domain/usecases/fetch_item_use_case.dart';
import 'Item_state.dart';
import 'item_event.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final LoadItemUsecase loadItemUsecase = getIt.get<LoadItemUsecase>();


  ItemBloc() : super(ItemState.initial()) {
    on<InitItemEvent>(loadItem);
    on<ClearEvent>(clear);
  }

  /// Loads Item into the Item screen
  Future<void> loadItem(InitItemEvent event, Emitter<ItemState> emit) async {
    Either<Failure, Item> execution =
        await loadItemUsecase.execute(event.itemUrl);

    execution.fold((l) {
      emit(state.copyWith(
        status: AsyncStatus.error,
      ));
    }, (r) {
      emit(state.copyWith(status: AsyncStatus.succesful, item: r));
    });
  }
  /// Clears Item state
  void clear(ClearEvent event, Emitter<ItemState> emit) {
    emit(ItemState.initial());
  }
  
}