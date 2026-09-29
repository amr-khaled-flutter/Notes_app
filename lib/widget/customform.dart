import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/AddNoteCubit/AddNodeCubit.dart';
import 'package:notes_app/cubit/AddNoteCubit/AddNodeCubitStates.dart';
import 'package:notes_app/models/NoteModel.dart';
import 'package:notes_app/widget/AddBotton.dart';
import 'package:notes_app/widget/customtextfeild.dart';

class Customform extends StatefulWidget {
  @override
  State<Customform> createState() => _CustomformState();
}

class _CustomformState extends State<Customform> {
  String? title, subtitle;
  final GlobalKey<FormState> key = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: key,
      child: Column(
        children: [
          SizedBox(height: 50),
          Customtextfeild(
            hinttext: 'Title',
            onsaved: (data) {
              title = data;
            },
          ),
          SizedBox(height: 30),
          Customtextfeild(
            hinttext: 'Context',
            maxlines: 5,
            onsaved: (data) {
              subtitle = data;
            },
          ),
          SizedBox(height: 30),
          BlocBuilder<Addnodecubit, AddNodeCubitStates>(
            builder: (context, state) {
              return Addbotton(
                loading: state is AddNodeLoading ? true : false  ,
                ontap: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    Notemodel notemodel = Notemodel(
                      color: Colors.blue.toARGB32(),
                      subtitle: subtitle!,
                      time: DateTime.now().toString(),
                      title: title!,
                    );
                    BlocProvider.of<Addnodecubit>(context).addnote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
