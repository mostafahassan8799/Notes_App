import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_note_item.dart';
import 'notes_view_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          CustomAppBar(),
          Expanded(child: NotesViewList()),
        ],
      ),
    );
  }
}
