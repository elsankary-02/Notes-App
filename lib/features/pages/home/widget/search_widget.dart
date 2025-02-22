import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.icon,
  });

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: ColorManger.kContanierBackGroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        size: 27,
        icon,
        color: Colors.white,
      ),
    );
  }
}
