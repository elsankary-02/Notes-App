import 'package:flutter/material.dart';
import 'package:notes_app/core/components/custom_botton.dart';
import 'package:notes_app/core/components/custom_text_form_field.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          children: [
            // Titel
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: CustomTextFormField(
                hintText: 'Titel',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'empty';
                  } else {
                    return 'valid';
                  }
                },
              ),
            ),
            // Content
            CustomTextFormField(
              maxLines: 4,
              hintText: 'Content',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'empty';
                } else {
                  return 'valid';
                }
              },
            ),
            CustomButton(
              onTap: () {
                formKey.currentState!.validate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
