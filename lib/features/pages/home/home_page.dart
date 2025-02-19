import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/features/pages/home/widget/floating_action_button_widget.dart';
import 'package:notes_app/features/pages/home/widget/search_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Note App',
          style: textTheme.headlineMedium,
        ),
        actions: [
          // SearchIconWidget
          SearchWidget(),
        ],
      ),
      // FloatingActionButtonWidget
      floatingActionButton: FloatingActionButtonWidget(),
      body: Column(),
    );
  }
}
