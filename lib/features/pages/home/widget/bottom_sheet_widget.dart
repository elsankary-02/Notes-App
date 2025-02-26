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
  // AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Form(
        key: formKey,
        // autovalidateMode: autovalidateMode,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 30),
                //! Titel
                CustomTextFormField(
                  //! sonsaved titel
                  onSaved: (value) {
                    title = value;
                  },
                  hintText: 'Titel',
                ),
                SizedBox(height: 20),
                //! Content
                CustomTextFormField(
                  contentPadding: EdgeInsets.only(left: 10, top: 120),
                  onSaved: (value) {
                    content = value;
                  },
                  hintText: 'Content',
                ),
                CustomButton(
                  onTap: () {
                    // if (formKey.currentState!.validate()) {
                    //   formKey.currentState!.save();
                    // } else {
                    //   autovalidateMode = AutovalidateMode.always;
                    //   setState(() {});
                    // }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
