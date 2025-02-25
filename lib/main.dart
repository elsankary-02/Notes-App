import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/core/constant/string_manger.dart';
import 'package:notes_app/core/router/router.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(StringManger.kNoteBox);
  runApp(
    ProviderScope(child: const NoteApp()),
  );
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: StringManger.kPoppins,
        brightness: Brightness.dark,
      ),
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
