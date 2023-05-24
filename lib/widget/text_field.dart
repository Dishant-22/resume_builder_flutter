import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LabelTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Function? onTap;
  final String? label;
  final Color? color;
  final String? hint;
  final Widget? suffix;
  final Widget? prefix;
  final bool? readOnly;
  final bool? obSecure;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? padding;
  final String? validate;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool? fill;
  final Color? fillColor;
  final String? textFieldType;
  final TextStyle? hintTextStyle;
  final TextStyle? inputTextStyle;
  final int? extraSetup;
  final Function()? fun;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final int? maxLines;
  final String? error;
  final int? maxLength;
  final bool? isDense;
  final bool? isCollapsed;
  final InputBorder? border;
  final InputBorder? focusBorder;
  final InputBorder? errorBorder;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;

  const LabelTextField(
      {Key? key,
      this.controller,
      this.label,
      this.suffix,
      this.hint,
      this.prefix,
      this.color,
      this.obSecure = false,
      this.readOnly = false,
      this.onTap,
      this.validate,
      this.keyboardType,
      this.textInputAction,
      this.extraSetup,
      this.fill,
      this.errorBorder,
      this.fillColor,
      this.textFieldType,
      this.hintTextStyle,
      this.inputTextStyle,
      this.fun,
      this.onChanged,
      this.onFieldSubmitted,
      this.maxLines,
      this.error,
      this.contentPadding,
      this.padding,
      this.maxLength,
      this.isDense,
      this.border,
      this.isCollapsed,
      this.focusBorder,
      this.prefixIconConstraints,
      this.suffixIconConstraints,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: '*',
      keyboardType: keyboardType,
      maxLines: maxLines ?? 1,
      minLines: 1,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      cursorColor: Colors.grey,
      textInputAction: textInputAction ?? TextInputAction.next,
      textAlign: TextAlign.left,
      maxLength: maxLength,
      validator: validator,
      obscureText: obSecure!,
      readOnly: readOnly!,
      controller: controller,
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      style: const TextStyle(
        color: Colors.black87,
        fontSize: 16,
      ),
      decoration: InputDecoration(
          labelText: label ?? "Label Text",
          labelStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          errorMaxLines: 3,
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 16,
          ),
          counter: const SizedBox(
            height: 0,
            width: 0,
          ),
          suffixIcon: suffix,
          prefixIconConstraints: prefixIconConstraints ?? const BoxConstraints(minWidth: 31, maxWidth: 31, minHeight: 45),
          suffixIconConstraints: suffixIconConstraints,
          prefixIcon: (prefix != null) ? Container(alignment: Alignment.centerRight, height: 10, width: 0, child: prefix) : null,
          contentPadding: contentPadding ?? const EdgeInsets.only(left: 15, top: 22, right: 0),
          border: InputBorder.none,
          hintText: label ?? "Hint Text",
          filled: true,
          isDense: false,
          isCollapsed: false,
          fillColor: Colors.grey[50],
          focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Colors.black, style: BorderStyle.solid)),
          errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Colors.red, style: BorderStyle.solid)),
          disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Colors.black, style: BorderStyle.solid)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Colors.black, style: BorderStyle.solid)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: Colors.black, style: BorderStyle.solid))),
    );
  }
}
