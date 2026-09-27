import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubit/AddNoteCubit/AddNodeCubitStates.dart';

import 'package:notes_app/widget/customform.dart';

class AddNoteBottonsheet extends StatefulWidget {
  @override
  State<AddNoteBottonsheet> createState() => _AddNoteBottonsheetState();
}

class _AddNoteBottonsheetState extends State<AddNoteBottonsheet> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: BlocListener(
          listener: (context, state) {
            if (state is AddNodeFail) {
              print('Failing ${state.message}');
            }
            if (state is AddNodeLoading) {
              isloading = true;
            }
            if (state is AddNodeSuccess) {
              Navigator.pop(context);
            }
          },
          child: ModalProgressHUD(inAsyncCall: isloading, child: Customform()),
        ),
      ),
    );
  }
}
