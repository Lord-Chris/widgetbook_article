import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:widgetbook_test/ui/views/onboarding_view/onboarding_view.dart';

import '../ui/views/dashboard_view/dashboard_view.dart';
import '../ui/views/login_view/login_view.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: OnboardingView, initial: true),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(page: DashboardView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class App {}
