/// [File] router.dart
///
/// This file holds an [AppRouter] class,
/// used to navigate through the app
///
/// [Author] Chris Kneller
/// [Date] March 5, 2024

import 'package:cleanproject/src/features/scanner/presentation/screens/scanner_screen.dart';
import 'package:go_router/go_router.dart';

import '../features/home/presentation/screens/home_screen.dart';

class AppRouter {
  late final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: HomeScreen.routeName,
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: ScannerScreen.routeName,
      name: ScannerScreen.routeName,
      builder: (context, state) => const ScannerScreen(),
    ),
  ]);
}
