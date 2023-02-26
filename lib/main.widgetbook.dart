// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_test/app/app.locator.dart';
import 'package:widgetbook_test/app/app.router.dart';
import 'package:widgetbook_test/main.dart';
import 'package:widgetbook_test/ui/shared/app_button.dart';
import 'package:widgetbook_test/ui/shared/app_textfield.dart';
import 'package:widgetbook_test/ui/shared/home_item.dart';
import 'package:widgetbook_test/ui/views/home_view/home_view.dart';
import 'package:widgetbook_test/ui/views/login_view/login_view.dart';
import 'package:widgetbook_test/ui/views/login_view/login_viewmodel.dart';
import 'package:widgetbook_test/ui/views/onboarding_view/onboarding_view.dart';
import 'package:widgetbook_test/ui/views/onboarding_view/onboarding_viewmodel.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'Widgetbook Test',
      ),
      themes: [
        WidgetbookTheme(
          name: 'Light theme',
          data: getLightTheme(),
        ),
        WidgetbookTheme(
          name: 'Dark theme',
          data: getDarkTheme(),
        ),
      ],
      devices: [
        Device(
          name: 'iPhone 13 Pro Max',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2778.0,
              width: 1284.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'S21 Ultra',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 3200.0,
              width: 1440.0,
            ),
            scaleFactor: 3.75,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'Desktop 1080p',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 1080.0,
              width: 1920.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.desktop,
        ),
      ],
      categories: [
        WidgetbookCategory(
          name: 'use cases',
          folders: [
            WidgetbookFolder(
              name: 'ui',
              widgets: [],
              folders: [
                WidgetbookFolder(
                  name: 'shared',
                  widgets: [
                    WidgetbookComponent(
                      name: 'AppTextField',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'App TextField',
                          builder: (context) =>
                              appTextFieldViewUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'App Button',
                          builder: (context) => appButtonViewUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'HomeItem',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Home Item',
                          builder: (context) => homeItemViewUseCase(context),
                        ),
                      ],
                    ),
                  ],
                  folders: [],
                ),
                WidgetbookFolder(
                  name: 'views',
                  widgets: [],
                  folders: [
                    WidgetbookFolder(
                      name: 'login_view',
                      widgets: [
                        WidgetbookComponent(
                          name: 'LoginView',
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Login View',
                              builder: (context) =>
                                  loginViewViewUseCase(context),
                            ),
                          ],
                        ),
                      ],
                      folders: [],
                    ),
                    WidgetbookFolder(
                      name: 'onboarding_view',
                      widgets: [
                        WidgetbookComponent(
                          name: 'OnboardingView',
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Onboarding View',
                              builder: (context) =>
                                  onboarding2ViewUseCase(context),
                            ),
                          ],
                        ),
                      ],
                      folders: [],
                    ),
                    WidgetbookFolder(
                      name: 'home_view',
                      widgets: [
                        WidgetbookComponent(
                          name: 'HomeView',
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Home View',
                              builder: (context) =>
                                  homeViewViewUseCase(context),
                            ),
                          ],
                        ),
                      ],
                      folders: [],
                    ),
                  ],
                ),
              ],
            ),
          ],
          widgets: [],
        ),
      ],
      appBuilder: myAppBuilder,
    );
  }
}
