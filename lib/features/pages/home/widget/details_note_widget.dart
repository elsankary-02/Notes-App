import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/core/constant/color_manger.dart';
import 'package:notes_app/features/providers/details_note_provider.dart';

class DetailsNoteWidget extends ConsumerWidget {
  const DetailsNoteWidget(this.index, {super.key});

  final int index;
  @override
  Widget build(BuildContext context, ref) {
    final h = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    final itemProvider = ref.watch(detailsNoteProvider);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: h * 0.050,
                    ),
                    // titel
                    Text(
                      itemProvider[index].titel,
                      style: textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorManger.kContanierBackGroundColor),
                    ),
                    SizedBox(height: 20),
                    // description
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
                itemProvider[index].delete
              ],
            ),
            SizedBox(height: 20),
            // time
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  itemProvider[index].time,
                  style: textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff96964e),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
