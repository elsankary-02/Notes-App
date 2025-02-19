import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/providers/details_note_provider.dart';

class DateFormatWidget extends ConsumerWidget {
  const DateFormatWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;
    final itemProvider = ref.watch(detailsNoteProvider);
    return Align(
        alignment: Alignment.centerRight,
        child: Text(
          itemProvider[index].time,
          style: textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w600,
            color: Color(0xff96964e),
          ),
        ));
  }
}
