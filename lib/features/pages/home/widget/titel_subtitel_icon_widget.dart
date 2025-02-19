import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/core/constant/color_manger.dart';
import 'package:notes_app/features/providers/details_note_provider.dart';

class TitelandSubTitelandIconWidget extends ConsumerWidget {
  const TitelandSubTitelandIconWidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context, ref) {
    final h = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    final itemProvider = ref.watch(detailsNoteProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: h * 0.050,
            ),
            // Titel
            Text(
              itemProvider[index].titel,
              style: textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: ColorManger.kContanierBackGroundColor),
            ),
            SizedBox(height: 20),
            // Description
            Text(
              textAlign: TextAlign.center,
              itemProvider[index].description,
              style: textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: Color(0xff96964e),
              ),
            ),
          ],
        ),
        // Delete
        itemProvider[index].delete
      ],
    );
  }
}
