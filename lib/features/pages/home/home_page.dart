import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/core/constant/color_manger.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Note App'),
        actions: [
          // Search Icon Widget
          SearchWidget(),
        ],
      ),
      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorManger.kBlue,
        child: Icon(
          Icons.add,
          color: ColorManger.kPlusColor,
        ),
      ),
      // body: Column(),
    );
  }
}
