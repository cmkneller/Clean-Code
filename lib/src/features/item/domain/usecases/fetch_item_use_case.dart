/// [File] load_item_usecase.dart
///
/// This file holds an implemented [LoadItemUsecase] class
/// used to fetch the current Item
///
/// [Author] Pascal Bibby
/// [Date] March 6, 2024

import 'package:cleanproject/src/core/shared/entities/url.dart';
import 'package:dartz/dartz.dart';

import '../../../../config/locator.dart';
import '../../../../core/utility/exception_extension.dart';
import '../../../../core/utility/failure.dart';
import '../../../../core/utility/usecase.dart';
import '../../../error/domain/repositories/abstract/error_repository.dart';
import '../entities/item.dart';
import '../repositories/item_repository.dart';

class LoadItemUsecase extends Usecase<Url, Item> {
  final ItemRepository itemRepository = getIt.get<ItemRepository>();
  final ErrorRepository errorRepository = getIt.get<ErrorRepository>();

  /// Executes the signin operation, accepts [params]
  ///
  /// returns either an [Item] or [Failure] based on the status of the
  /// operation

  @override
  Future<Either<Failure, Item>> execute(params) async {
    try {
      Item item = await itemRepository.fetchItem(itemUrl: params);

      return Right(item);
    } on Exception catch (e) {
      Failure failure = Failure(severity: Severity.low, message: e.message);
      errorRepository.pushError(failure);
      return Left(failure);
    }
  }
}


