import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:widgetbook_test/ui/views/onboarding_view/onboarding_view.dart';

import '../ui/views/home_view/home_view.dart';
import '../ui/views/login_view/login_view.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: OnboardingView, initial: true),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class App {}
