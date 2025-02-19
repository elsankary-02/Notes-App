import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: ColorManger.kBlue,
      child: Icon(
        Icons.add,
        color: ColorManger.kPlusColor,
      ),
    );
  }
}
