import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/widget/CustomAppBar.dart';
import 'package:notes_app/widget/CustomListViewBuilder.dart';
import 'package:notes_app/widget/cubit/Notesviewcubit/NotesViewCubit.dart';

class CustomNotesViewBody extends StatefulWidget {
  @override
  State<CustomNotesViewBody> createState() => _CustomNotesViewBodyState();
}

class _CustomNotesViewBodyState extends State<CustomNotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<Notesviewcubit>(context).fetchallnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          Customappbar(text: 'Notes', icon: Icons.search),
          SizedBox(height: 20),
          Expanded(child: Customlistviewbuilder()),
        ],
      ),
    );
  }
}
