import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String? hint;
  final String? initialValue;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final Widget? suffix;
  final Widget? prefix;
  final bool readOnly;
  final bool expands;
  final int? minLines, maxLines, maxLength;
  final bool enabled;
  final void Function(String)? onChanged;

  const AppTextField({
    Key? key,
    this.hint,
    this.controller,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.suffix,
    this.obscureText = false,
    this.prefix,
    this.initialValue,
    this.readOnly = false,
    this.expands = false,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.enabled = true,
    this.onChanged,
  })  : assert(initialValue == null || controller == null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      obscureText: obscureText,
      readOnly: readOnly,
      expands: expands,
      maxLines: maxLines,
      onChanged: onChanged,
      minLines: minLines,
      maxLength: maxLength,
      cursorColor: Colors.black,
      style: TextStyle(
        fontSize: 16.spMin,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffix,
        prefixIcon: prefix,
        enabled: enabled,
        filled: true,
        fillColor: Colors.grey.withOpacity(.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(
          fontSize: 16.spMin,
          fontWeight: FontWeight.normal,
          color: Colors.black.withOpacity(.37),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
