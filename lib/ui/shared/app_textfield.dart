import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook/widgetbook.dart' hide WidgetbookUseCase;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'App TextField', type: AppTextField)
Widget appTextFieldViewUseCase(BuildContext context) {
  return Center(
    child: AppTextField(
      hint: context.knobs.text(label: "Hint"),
      initialValue: context.knobs.text(label: "Initial Value"),
      obscureText: context.knobs.boolean(label: "Obscure text"),
      minLines: context.knobs.nullableNumber(label: "Min Lines")?.toInt(),
      maxLines: context.knobs.nullableNumber(label: "Max Lines")?.toInt(),
      enabled: context.knobs.boolean(label: "Is Enabled"),
      prefix: context.knobs.options(label: "Prefix Widget", options: [
        const Option(label: "None", value: null),
        const Option(label: "Back Icon", value: Icon(Icons.arrow_back)),
        const Option(label: "Forward Icon", value: Icon(Icons.arrow_forward)),
        const Option(label: "Favourite", value: Icon(Icons.favorite)),
      ]),
      suffix: context.knobs.options(label: "Suffix Widget", options: [
        const Option(label: "None", value: null),
        const Option(label: "Back Icon", value: Icon(Icons.arrow_back)),
        const Option(label: "Forward Icon", value: Icon(Icons.arrow_forward)),
        const Option(label: "Favourite", value: Icon(Icons.favorite)),
      ]),
      textCapitalization:
          context.knobs.options(label: "Text Capitalization", options: [
        const Option(label: "None", value: TextCapitalization.none),
        const Option(label: "words", value: TextCapitalization.words),
        const Option(label: "sentences", value: TextCapitalization.sentences),
      ]),
    ),
  );
}

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
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
