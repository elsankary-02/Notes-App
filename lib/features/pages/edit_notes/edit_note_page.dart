import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/core/components/custom_text_form_field.dart';
import 'package:notes_app/features/pages/home/widget/search_widget.dart';

@RoutePage()
class EditNotePage extends ConsumerWidget {
  const EditNotePage({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;
    // final itemProvider = ref.watch(noteItemsProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Text(
          'Edit Note',
          style: textTheme.headlineMedium,
        ),
        actions: [
          // SearchIconWidget
          SearchWidget(
            icon: Icons.check,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(height: 30),
          // titel
          CustomTextFormField(hintText: 'titel'),
          SizedBox(height: 20),
          // content
          CustomTextFormField(
            contentPadding: EdgeInsets.only(left: 10, top: 120),
            hintText: 'content',
          ),
        ],
      ),
    );
  }
}
