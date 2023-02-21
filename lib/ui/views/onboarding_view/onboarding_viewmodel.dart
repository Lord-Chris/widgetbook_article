import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:widgetbook_test/app/app.locator.dart';
import 'package:widgetbook_test/app/app.router.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void signIn() {
    _navigationService.navigateTo(Routes.loginView);
  }
}
