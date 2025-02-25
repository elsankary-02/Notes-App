import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.only(top: 120, bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: ColorManger.kBlue),
        child: Center(
          child: Text(
            'Add',
            style: textTheme.labelLarge!.copyWith(
                color: ColorManger.kContanierBackGroundColor,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
