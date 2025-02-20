import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/pages/home/widget/floating_action_button_widget.dart';
import 'package:notes_app/features/pages/home/widget/note_items_widget.dart';
import 'package:notes_app/features/pages/home/widget/search_widget.dart';
import 'package:notes_app/features/providers/note_provider.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final itemProvider = ref.watch(noteItemsProvider);
    return Scaffold(
      // FloatingActionButtonWidget
      floatingActionButton: FloatingActionButtonWidget(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          'Note App',
          style: textTheme.headlineMedium,
        ),
        actions: [
          // SearchIconWidget
          SearchWidget(),
        ],
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        itemCount: itemProvider.length,
        itemBuilder: (context, index) {
          // NoteItemsWidget
          return NoteItemsWidget(index);
        },
      ),
    );
  }
}
