import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_note_item.dart';

class NotesViewList extends StatelessWidget {
  const NotesViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NotesSuccess) {
          List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
                itemCount: notes.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: NoteItem(
                      notes: notes[index],
                    ),
                  );
                }),
          );
        } else {
          return const Text('error');
        }
      },
    );
  }
}
