import 'package:flutter/material.dart';

class DetailsNoteModel {
  final String titel;
  final String description;
  final Icon delete;
  final String time;

  DetailsNoteModel(
      {required this.titel,
      required this.description,
      required this.delete,
      required this.time});
}
