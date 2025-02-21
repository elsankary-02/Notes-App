import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.validator,
      this.contentPadding});
  final String hintText;
  final String Function(String? value)? validator;
  final EdgeInsetsGeometry? contentPadding;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TextFormField(
      scrollPadding: EdgeInsets.all(22),
      validator: widget.validator,
      decoration: InputDecoration(
        contentPadding: widget.contentPadding,
        hintText: widget.hintText,
        hintStyle: textTheme.titleMedium!.copyWith(
          color: ColorManger.kBlue,
        ),
        border: outLineInputBorder(),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
