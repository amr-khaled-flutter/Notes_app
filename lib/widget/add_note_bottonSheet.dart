import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/AddNoteCubit/AddNodeCubit.dart';
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
    return BlocProvider(
      create: (context) => Addnodecubit(),
      child: BlocConsumer<Addnodecubit, AddNodeCubitStates>(
        listener: (context, state) {
          if (state is AddNodeFail) {
            print('Failing ${state.message}');
          }
          if (state is AddNodeLoading) {
            isloading = true;
            setState(() {});
          }
          if (state is AddNodeSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNodeLoading ? true : false,
            child: Padding(
              padding:  EdgeInsets.only(left: 10,right: 10,
               bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: Customform()),
            )
          );
        },
      ),
    );
  }
}
