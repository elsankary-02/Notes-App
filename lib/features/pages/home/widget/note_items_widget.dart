import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/core/router/router.dart';
import 'package:notes_app/features/providers/note_provider.dart';

class NoteItemsWidget extends ConsumerWidget {
  const NoteItemsWidget(this.index, {super.key});
  final int index;
  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;
    final itemProvider = ref.watch(noteItemsProvider);
    return GestureDetector(
      onTap: () {
        context.router.push(EditNoteRoute(index: index));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Color(0xffffcc79),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              // title
              title: Text(
                itemProvider[index].titel,
                style: textTheme.headlineMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // subtitle
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  itemProvider[index].description,
                  style: textTheme.titleMedium!.copyWith(
                    color: Colors.black26,
                  ),
                ),
              ),
              // trailing
              trailing: IconButton(
                onPressed: () {},
                icon: itemProvider[index].delete,
              ),
            ),
            // time
            Padding(
              padding: const EdgeInsets.only(top: 24, right: 24),
              child: Text(
                itemProvider[index].date,
                style: textTheme.titleSmall!.copyWith(
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
