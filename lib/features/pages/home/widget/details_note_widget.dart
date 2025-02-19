import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/pages/home/widget/date_format_widget.dart';
import 'package:notes_app/features/pages/home/widget/titel_subtitel_icon_widget.dart';

class DetailsNoteWidget extends ConsumerWidget {
  const DetailsNoteWidget(this.index, {super.key});

  final int index;
  @override
  Widget build(BuildContext context, ref) {
    final h = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      height: h * 0.250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.yellow,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // Titel and SubTitel and Icon Widget
            TitelandSubTitelandIconWidget(index: index),
            SizedBox(height: 20),
            // Date Format Widget
            DateFormatWidget(index: index)
          ],
        ),
      ),
    );
  }
}
