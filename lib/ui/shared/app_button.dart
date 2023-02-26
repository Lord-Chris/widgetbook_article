import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook/widgetbook.dart' hide WidgetbookUseCase;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'App Button', type: AppButton)
Widget appButtonViewUseCase(BuildContext context) {
  return Center(
    child: AppButton(
      label: context.knobs.text(
        label: "Label",
        initialValue: "Test Button",
        description: "The label of this button",
      ),
      hasBorder: context.knobs.boolean(label: "Has border"),
      borderRadius:
          context.knobs.nullableNumber(label: "Border Radius")?.toDouble(),
      labelSize: context.knobs.nullableNumber(label: "Label size")?.toDouble(),
      isCollapsed: context.knobs.boolean(label: "Is collapsed"),
      prefixWidget: context.knobs.options(label: "Prefix Widget", options: [
        const Option(label: "None", value: null),
        const Option(label: "Back Icon", value: Icon(Icons.arrow_back)),
        const Option(label: "Forward Icon", value: Icon(Icons.arrow_forward)),
        const Option(label: "Favourite", value: Icon(Icons.favorite)),
      ]),
      suffixWidget: context.knobs.options(label: "Suffix Widget", options: [
        const Option(label: "None", value: null),
        const Option(label: "Back Icon", value: Icon(Icons.arrow_back)),
        const Option(label: "Forward Icon", value: Icon(Icons.arrow_forward)),
        const Option(label: "Favourite", value: Icon(Icons.favorite)),
      ]),
      fontWeight: context.knobs.options(label: "Font weight", options: [
        const Option(label: "Regular", value: FontWeight.normal),
        const Option(label: "Medium", value: FontWeight.w500),
        const Option(label: "Bold", value: FontWeight.bold),
      ]),
    ),
  );
}

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final Color? labelColor, buttonColor, borderColor, disabledColor;
  final double? width, height, borderRadius, labelSize;
  final bool isCollapsed, isDisabled;
  final bool hasBorder, isBusy;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry? padding;
  final Widget? customChild, prefixWidget, suffixWidget;

  const AppButton({
    Key? key,
    this.onTap,
    this.width,
    this.height,
    this.customChild,
    this.buttonColor = Colors.black,
    required this.label,
    this.labelColor = Colors.white,
    this.disabledColor,
    this.borderColor,
    this.isCollapsed = false,
    this.hasBorder = false,
    this.isBusy = false,
    this.isDisabled = false,
    this.fontWeight = FontWeight.w500,
    this.borderRadius,
    this.padding,
    this.labelSize,
    this.prefixWidget,
    this.suffixWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? (isCollapsed ? null : double.maxFinite),
      height: height ?? (isCollapsed ? null : 50.h),
      child: MaterialButton(
        onPressed: isDisabled ? null : onTap,
        disabledColor: disabledColor ?? buttonColor?.withOpacity(0.3),
        color: buttonColor,
        clipBehavior: Clip.hardEdge,
        padding: padding ?? EdgeInsets.all(10.r),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular((borderRadius ?? 8).r),
          side: hasBorder
              ? BorderSide(
                  color: borderColor ?? Colors.grey[400]!,
                  width: 2.r,
                )
              : BorderSide.none,
        ),
        child: Builder(
          builder: (context) {
            if (isBusy) {
              return SizedBox.square(
                child: FittedBox(
                  child: CircularProgressIndicator(
                    color: labelColor,
                  ),
                ),
              );
            }

            if (customChild != null) return customChild!;

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (prefixWidget != null)
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: prefixWidget,
                  ),
                Expanded(
                  child: Center(
                    child: Text(
                      label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: (labelSize ?? 14).spMin,
                        fontWeight: fontWeight,
                        color: labelColor,
                      ),
                    ),
                  ),
                ),
                if (suffixWidget != null)
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: suffixWidget,
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
