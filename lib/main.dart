import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/core/router/router.dart';

void main() {
  runApp(
    ProviderScope(child: const NoteApp()),
  );
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(brightness: Brightness.dark),
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
