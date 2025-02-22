import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, this.validator, this.maxLines = 1});
  final String hintText;
  final String Function(String? value)? validator;
  final int? maxLines;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TextFormField(
      maxLines: widget.maxLines,
      scrollPadding: EdgeInsets.all(22),
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: textTheme.titleMedium!.copyWith(
          color: Colors.grey,
        ),
        border: outLineInputBorder(color: Colors.white),
        enabledBorder: outLineInputBorder(color: Colors.white),
        focusedBorder: outLineInputBorder(color: ColorManger.kBlue),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
