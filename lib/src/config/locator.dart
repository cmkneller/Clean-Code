/// [File] locator.dart
///
/// This file holds an [Locator] class,
/// used to register classes for dependancy injection.
///
/// [Author] Chris Kneller
/// [Date] March 5, 2024

import 'package:cleanproject/src/features/auth/auth_module.dart';
import 'package:cleanproject/src/features/error/error_module.dart';
import 'package:cleanproject/src/features/home/home_module.dart';
import 'package:cleanproject/src/features/item/item_module.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Locator {
  void initDependancies() {
    initApis();
    initDataSources();
    initRepositories();
    initUsecases();
    initBlocs();
    getIt.allowReassignment = true;
  }

  /// Inits all api classes
  void initApis() {
    getIt.initAuthApis();
  }

  /// Inits all data source classes
  void initDataSources() {
    getIt.initAuthDataSources();
    getIt.initItemDataSources();
  }

  /// Inits all repos
  void initRepositories() {
    getIt.initErrorRepos();
    getIt.initAuthRepos();
    getIt.initItemRepos();
  }

  /// Inits usescases
  void initUsecases() {
    getIt.initAuthUsecases();
    getIt.initHomeUsecases();
    getIt.initItemUsecases();
  }

  /// Inits blocs
  void initBlocs() {
    getIt.initAuthBlocs();
    getIt.initHomeBlocs();
    getIt.initErrorBlocs();
  }
}
