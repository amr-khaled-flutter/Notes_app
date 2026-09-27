import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubit/addnotecubit/addnotecubit.dart';
import 'package:notes_app/cubit/addnotecubit/addnotestate.dart';
import 'package:notes_app/widget/customform.dart';

class AddNoteBottonsheet extends StatefulWidget {
  @override
  State<AddNoteBottonsheet> createState() => _AddNoteBottonsheetState();
}

class _AddNoteBottonsheetState extends State<AddNoteBottonsheet> {
  bool isloading = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: BlocListener<Addnotecubit, AddNotestate>(
          listener: (context, state) {
            if (state is AddnoteFail) {
              print('Faild ${state.message}');
            }
            if (state is AddNotesuccess) {
              Navigator.pop(context);
            }
          },

          child: ModalProgressHUD(inAsyncCall: isloading, child: Customform()),
        ),
      ),
    );
  }
}
