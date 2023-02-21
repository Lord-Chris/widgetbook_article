import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
