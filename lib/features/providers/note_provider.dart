import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/features/models/details_note_model.dart';

List<NoteItemsModel> item = [
  NoteItemsModel(
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    time: 'NOV 21,2025',
  ),
  NoteItemsModel(
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    time: 'NOV 21,2025',
  ),
  NoteItemsModel(
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    time: 'NOV 21,2025',
  ),
  NoteItemsModel(
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    time: 'NOV 21,2025',
  ),
  NoteItemsModel(
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    time: 'NOV 21,2025',
  ),
  NoteItemsModel(
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    time: 'NOV 21,2025',
  ),
  NoteItemsModel(
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    time: 'NOV 21,2025',
  ),
  NoteItemsModel(
    titel: 'Flutter tips',
    description: 'Build Your Career With\nMohamed elsankry',
    delete: Icon(
      FontAwesomeIcons.trash,
      color: Colors.black,
    ),
    time: 'NOV 21,2025',
  ),
];

final noteItemsProvider = Provider((ref) => item);
