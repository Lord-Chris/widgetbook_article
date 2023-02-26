import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_test/ui/shared/app_textfield.dart';

import '../../shared/home_item.dart';

@WidgetbookUseCase(name: 'Home View', type: HomeView)
Widget homeViewViewUseCase(BuildContext context) {
  return const HomeView();
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_rounded),
        title: Image.asset("assets/Group.png"),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const AppTextField(
            hint: "Search",
            prefix: Icon(Icons.search),
          ),
          SizedBox(height: 8.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: .62,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return const HomeItem(
                image: "assets/Frame 1.png",
                body: "Coconot oil",
                tag: "Serum",
                price: r"$30",
                isLiked: true,
                isAdded: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
