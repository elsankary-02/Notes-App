import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/features/models/details_note_model.dart';

List<NoteItemsModel> item = [
  NoteItemsModel(
    number: 1,
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    date: 'NOV 21,2025',
  ),
  NoteItemsModel(
    number: 2,
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    date: 'NOV 21,2025',
  ),
  NoteItemsModel(
    number: 3,
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    date: 'NOV 21,2025',
  ),
  NoteItemsModel(
    number: 4,
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    date: 'NOV 21,2025',
  ),
  NoteItemsModel(
    number: 5,
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    date: 'NOV 21,2025',
  ),
  NoteItemsModel(
    number: 6,
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    date: 'NOV 21,2025',
  ),
  NoteItemsModel(
    number: 7,
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    date: 'NOV 21,2025',
  ),
  NoteItemsModel(
    number: 8,
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    date: 'NOV 21,2025',
  ),
];

final noteItemsProvider = Provider((ref) => item);
