import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: ColorManger.kContanierBackGroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        size: 27,
        Icons.search,
        color: Colors.white,
      ),
    );
  }
}
