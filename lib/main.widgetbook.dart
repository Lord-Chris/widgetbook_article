// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_test/main.dart';
import 'package:widgetbook_test/ui/shared/home_item.dart';
import 'package:widgetbook_test/ui/views/home.dart';

void main() {
  runApp(const HotReload());
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
        const Device(
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
        const Device(
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
        const Device(
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
                  widgets: [
                    WidgetbookComponent(
                      name: 'HomeView',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Home View',
                          builder: (context) => homeViewUseCase(context),
                        ),
                      ],
                    ),
                  ],
                  folders: [],
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
