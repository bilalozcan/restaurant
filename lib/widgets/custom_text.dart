import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomText extends StatefulWidget {
  final String? data;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const CustomText(
      this.data, {
        Key? key,
        this.fontSize,
        this.fontWeight,
        this.color, this.textAlign,
      }) : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.data ?? '',
      textAlign: widget.textAlign ?? TextAlign.start,
      style: TextStyle(
          fontSize: widget.fontSize ?? 12,
          fontWeight: widget.fontWeight ?? FontWeight.normal,
          color: widget.color ?? Colors.blue),
    );
  }
}
