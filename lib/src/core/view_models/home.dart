import 'package:inmobiliariauy/src/core/navigation/routing_constants.dart';
import 'package:inmobiliariauy/src/core/services/navigation_service.dart';
import 'package:inmobiliariauy/src/locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  // MARK: - Variables
  final NavigationService _navigationService = locator<NavigationService>();

  void onTapNewRegister() {
    _navigationService.navigateTo(NewRegisterRoute);
  }
}
