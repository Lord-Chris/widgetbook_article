import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook/widgetbook.dart' hide WidgetbookUseCase;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Home Item', type: HomeItem)
Widget homeItemViewUseCase(BuildContext context) {
  return Center(
    child: HomeItem(
      body: context.knobs.text(label: "Body"),
      tag: context.knobs.text(label: "Tag"),
      isLiked: context.knobs.boolean(label: "Is Liked"),
      price: context.knobs.text(label: "Price"),
      isAdded: context.knobs.boolean(label: "Is Added"),
      image: context.knobs.options(label: "Image", options: [
        const Option(label: "Image 1", value: "assets/Frame 2.png"),
        const Option(label: "Image 2", value: "assets/Frame 5.png"),
        const Option(label: "Image 3", value: "assets/Frame 1.png"),
      ]),
    ),
  );
}

class HomeItem extends StatelessWidget {
  final String image;
  final String body;
  final String tag;
  final bool isLiked;
  final String price;
  final bool isAdded;

  const HomeItem({
    Key? key,
    required this.image,
    required this.body,
    required this.tag,
    required this.isLiked,
    required this.price,
    required this.isAdded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Expanded(
              child: Text(
                body,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Icon(
              isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.green : Colors.black,
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          tag,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            price,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(11),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          child: Text(
            isAdded ? "Add to bag" : "Added",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
