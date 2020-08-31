import 'package:get_it/get_it.dart';
import 'package:inmobiliariauy/src/core/services/navigation_service.dart';
import 'package:inmobiliariauy/src/core/view_models/new_register.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  // MARK: - Services
  locator.registerLazySingleton(() => NavigationService());
  // MARK: - ViewModels
  locator.registerFactory(() => NewRegisterViewModel());
}
