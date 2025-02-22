import 'package:flutter/material.dart';

class NoteItemsModel {
  final String titel;
  final String description;
  final Icon delete;
  final String time;
  final int number;

  NoteItemsModel(
      {required this.number,
      required this.titel,
      required this.description,
      required this.delete,
      required this.time});
}
