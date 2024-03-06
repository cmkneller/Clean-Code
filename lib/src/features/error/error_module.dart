/// [File] auth_module.dart
///
/// This file holds an [ErrorModule] extension on [GetIt],
/// used to register classes in the error module for dependancy injection.
///
/// [Author] Chris Kneller
/// [Date] March 5, 2024
library;

import 'package:cleanproject/src/features/error/domain/repositories/abstract/error_repository.dart';
import 'package:cleanproject/src/features/error/domain/repositories/implemented/impl_error_repository.dart';
import 'package:cleanproject/src/features/error/presentation/bloc/error_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../config/locator.dart';

extension ErrorModule on GetIt {
  /// Inits API
  void initErrorApis() {}

  /// Inits Data source
  void initErrorDataSources() {}

  /// Inits Repos
  void initErrorRepos() {
    getIt.registerLazySingleton<ErrorRepository>(() => ImplErrorRepository());
  }

  /// Inits Usecases
  void initErrorUsecases() {}

  /// Inits Blocs
  void initErrorBlocs() {
    getIt.registerLazySingleton<ErrorBloc>(() => ErrorBloc());
  }
}
