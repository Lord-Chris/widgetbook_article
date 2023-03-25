import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_test/main.dart';
import 'package:widgetbook_test/ui/shared/home_item.dart';
import 'package:widgetbook_test/ui/views/home.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'UI',
          folders: [
            WidgetbookFolder(
              name: 'Views',
              widgets: [
                WidgetbookComponent(
                  name: 'Home View',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Active',
                      builder: (context) {
                        return const HomeView();
                      },
                    ),
                    WidgetbookUseCase(
                      name: 'Inactive',
                      builder: (context) {
                        return const HomeView(isActive: false);
                      },
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'Components',
              widgets: [
                WidgetbookComponent(
                  name: 'Home Item',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) {
                        return HomeItem(
                          name: context.knobs.text(label: "Name"),
                          pickUp: context.knobs.text(label: "Pick Up"),
                          dropOff: context.knobs.text(label: "Drop off"),
                          amount:
                              context.knobs.number(label: "Amount").toDouble(),
                          image: context.knobs.options(
                            label: "Images",
                            options: [
                              const Option(label: "Image 1", value: asset1),
                              const Option(label: "Image 2", value: asset2),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
      appInfo: AppInfo(name: 'Widgetbook Test'),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: getLightTheme(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: getDarkTheme(),
        ),
      ],
      // textScaleFactors: const [1, 1.5],
    );
  }
}
