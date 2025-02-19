import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/core/constant/color_manger.dart';
import 'package:notes_app/features/models/details_note_model.dart';

List<DetailsNoteModel> item = [
  DetailsNoteModel(
    titel: 'Flutter Tips',
    description: 'Build Your Career With\n Mohamed elsankry',
    delete: Icon(
      size: 35,
      Icons.delete,
      color: ColorManger.kContanierBackGroundColor,
    ),
    time: 'NOV 21,2025',
  ),
  DetailsNoteModel(
    titel: 'Flutter Tips',
    description: 'Build Your Career With\n Mohamed elsankry',
    delete: Icon(
      size: 35,
      Icons.delete,
      color: ColorManger.kContanierBackGroundColor,
    ),
    time: 'NOV 21,2025',
  ),
  DetailsNoteModel(
    titel: 'Flutter Tips',
    description: 'Build Your Career With\n Mohamed elsankry',
    delete: Icon(
      size: 35,
      Icons.delete,
      color: ColorManger.kContanierBackGroundColor,
    ),
    time: 'NOV 21,2025',
  ),
  DetailsNoteModel(
    titel: 'Flutter Tips',
    description: 'Build Your Career With\n Mohamed elsankry',
    delete: Icon(
      size: 35,
      Icons.delete,
      color: ColorManger.kContanierBackGroundColor,
    ),
    time: 'NOV 21,2025',
  ),
  DetailsNoteModel(
    titel: 'Flutter Tips',
    description: 'Build Your Career With\n Mohamed elsankry',
    delete: Icon(
      size: 35,
      Icons.delete,
      color: ColorManger.kContanierBackGroundColor,
    ),
    time: 'NOV 21,2025',
  ),
  DetailsNoteModel(
    titel: 'Flutter Tips',
    description: 'Build Your Career With\n Mohamed elsankry',
    delete: Icon(
      size: 35,
      Icons.delete,
      color: ColorManger.kContanierBackGroundColor,
    ),
    time: 'NOV 21,2025',
  ),
  DetailsNoteModel(
    titel: 'Flutter Tips',
    description: 'Build Your Career With\n Mohamed elsankry',
    delete: Icon(
      size: 35,
      Icons.delete,
      color: ColorManger.kContanierBackGroundColor,
    ),
    time: 'NOV 21,2025',
  ),
  DetailsNoteModel(
    titel: 'Flutter Tips',
    description: 'Build Your Career With\n Mohamed elsankry',
    delete: Icon(
      size: 35,
      Icons.delete,
      color: ColorManger.kContanierBackGroundColor,
    ),
    time: 'NOV 21,2025',
  ),
];

final detailsNoteProvider = Provider((ref) => item);
