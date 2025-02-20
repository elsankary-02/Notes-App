import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
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
