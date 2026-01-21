import 'package:cred_pal/shared/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final Color? color;
  final bool centered;
  final int? maxLines;
  final double? fontSize;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;

  TextWidget.text13w700(
    this.text, {
    super.key,
    this.multiText = false,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.fontSize,
    this.fontStyle,
    this.decoration,
  }) : style = AppTextstyles.text13w700.copyWith(color: color);

  TextWidget.text28w900(
    this.text, {
    super.key,
    this.multiText = false,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.fontSize,
    this.fontStyle,
    this.decoration,
  }) : style = AppTextstyles.text28w900.copyWith(color: color);

  TextWidget.text14w800(
    this.text, {
    super.key,
    this.multiText = false,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.fontSize,
    this.fontStyle,
    this.decoration,
  }) : style = AppTextstyles.text14w800.copyWith(color: color);

  TextWidget.text16w900(
    this.text, {
    super.key,
    this.multiText = false,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.fontSize,
    this.fontStyle,
    this.decoration,
  }) : style = AppTextstyles.text16w900.copyWith(color: color);

  TextWidget.text12w500(
    this.text, {
    super.key,
    this.multiText = false,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.fontSize,
    this.fontStyle,
    this.decoration,
  }) : style = AppTextstyles.text12w500.copyWith(
         color: color,
         decoration: decoration,
       );

  TextWidget.text12w400(
    this.text, {
    super.key,
    this.multiText = false,
    this.textAlign,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.maxLines,
    this.fontSize,
    this.fontStyle,
    this.decoration,
  }) : style = AppTextstyles.text12w400.copyWith(
         color: color,
         decoration: decoration,
       );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: multiText || maxLines != null ? maxLines ?? 9999999999 : 1,
      overflow: overflow,
      textAlign: centered ? TextAlign.center : textAlign ?? TextAlign.left,

      style: style.copyWith(color: color),
    );
  }
}
