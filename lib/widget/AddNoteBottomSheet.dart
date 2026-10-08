import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/widget/CustomForm.dart';
import 'package:notes_app/widget/cubit/AddNoteCubit.dart';
import 'package:notes_app/widget/cubit/AddNoteCubitState.dart';
import 'package:notes_app/widget/cubit/Notesviewcubit/NotesViewCubit.dart';

class Addnotebottomsheet extends StatefulWidget {
  @override
  State<Addnotebottomsheet> createState() => _AddnotebottomsheetState();
}

class _AddnotebottomsheetState extends State<Addnotebottomsheet> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Addnotecubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<Addnotecubit, Addnotecubitstate>(
          listener: (context, state) {
            if (state is Addnotecubitloading) {
              isloading = true;
            }
            if (state is AddnotecubitFaiuture) {
            }
            if (state is Addnotecubitsuccess) {
              BlocProvider.of<Notesviewcubit>(context).fetchallnotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is Addnotecubitloading ? true : false,
              child: SingleChildScrollView(child: Customform()),
            );
          },
        ),
      ),
    );
  }
}
