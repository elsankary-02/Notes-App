import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.only(top: 190, bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: ColorManger.kBlue),
        child: Center(
          child: Text(
            'Add',
            style: textTheme.labelLarge!
                .copyWith(color: ColorManger.kContanierBackGroundColor),
          ),
        ),
      ),
    );
  }
}
