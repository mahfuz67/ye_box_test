

import 'package:get_it/get_it.dart';

import '../data/services/navigation/navigation.dart';

final GetIt getIt = GetIt.I;

Future init() async {
  getIt.registerLazySingleton<NavigationServiceImpl>(() => NavigationServiceImpl());
}