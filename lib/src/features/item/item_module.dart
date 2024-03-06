/// [File] Item_module.dart
///
/// This file holds an [ItemModule] extension on [GetIt],
/// used to register classes in the Item module for dependancy injection.
///
/// [Itemor] Chris Kneller
/// [Date] March 5, 2024
library;

import 'package:cleanproject/src/features/item/domain/usecases/fetch_item_use_case.dart';
import 'package:get_it/get_it.dart';

import '../../config/locator.dart';
import '../../../mocked/fake_api.dart';
import 'data/data-sources/abstract/item_data_source.dart';
import 'data/data-sources/implemented/impl_item_data_source.dart';
import 'data/repositories/impl_item_repository.dart';
import 'domain/repositories/item_repository.dart';


extension ItemModule on GetIt {
  /// Inits API
  void initItemApis() {
    getIt.registerLazySingleton<FakeAPI>(() => FakeAPI());
  }

  /// Inits Data source
  void initItemDataSources() {
    getIt.registerLazySingleton<ItemDataSource>(() => ImplItemDataSource());
  }

  /// Inits Repos
  void initItemRepos() {
    getIt.registerLazySingleton<ItemRepository>(() => ImplItemRepository());
  }

  /// Inits Usecases
  void initItemUsecases() {
    getIt.registerLazySingleton<LoadItemUsecase>(() => LoadItemUsecase());
  }

  /// Inits Blocs
  void initItemBlocs() {

  }
}
