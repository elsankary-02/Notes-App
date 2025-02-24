import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteItemsModel {
  @HiveField(0)
  final String titel;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final Icon delete;
  @HiveField(3)
  final String date;
  @HiveField(4)
  final int number;
  @HiveField(5)
  NoteItemsModel(
      {required this.number,
      required this.titel,
      required this.description,
      required this.delete,
      required this.date});
}
