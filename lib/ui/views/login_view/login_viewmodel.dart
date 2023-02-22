import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  bool isPasswordHidden = true;

  void back() => _navigationService.back();

  void togglePasswordVisibility() {
    isPasswordHidden = !isPasswordHidden;
    notifyListeners();
  }

  Future<void> logIn() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 2));
    _navigationService.navigateTo(Routes.dashboardView);
  }
}
