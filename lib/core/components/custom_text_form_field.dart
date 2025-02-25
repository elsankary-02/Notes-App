import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, this.onSaved, this.contentPadding});
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String? value)? onSaved;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TextFormField(
      onSaved: onSaved,
      cursorColor: ColorManger.kBlue,
      scrollPadding: EdgeInsets.all(22),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is requaired';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,
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
