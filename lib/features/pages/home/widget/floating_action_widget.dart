import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';
import 'package:notes_app/features/pages/home/widget/bottom_sheet_widget.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return BottomSheetWidget();
          },
        );
      },
      backgroundColor: ColorManger.kBlue,
      child: Icon(
        Icons.add,
        color: ColorManger.kPlusColor,
      ),
    );
  }
}
