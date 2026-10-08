import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/classes/ItemNoteModel.dart';
import 'package:notes_app/widget/CustomAddBotton.dart';
import 'package:notes_app/widget/CustomTextFeild.dart';
import 'package:notes_app/widget/ListofColors.dart';
import 'package:notes_app/widget/cubit/AddNoteCubit.dart';
import 'package:notes_app/widget/cubit/AddNoteCubitState.dart';

class Customform extends StatefulWidget {
  @override
  State<Customform> createState() => _CustomformState();
}

class _CustomformState extends State<Customform> {
  String? title;
  String? subtitle;
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
            maxlines: 1,
            onsaved: (data) {
              title = data;
            },
          ),
          SizedBox(height: 30),
          Customtextfeild(
            hinttext: 'Content',
            maxlines: 5,
            onsaved: (data) {
              subtitle = data;
            },
          ),
          SizedBox(height: 30),
         Listofcolors(),
          SizedBox(height: 30),

          GestureDetector(
            onTap: () {
              if (key.currentState!.validate()) {
                key.currentState!.save();
                var currentDate = DateTime.now();
                var formeted = DateFormat.yMd().format(currentDate);
                Itemnotemodel item = Itemnotemodel(
                  time: formeted,
                  color: Colors.blue.toARGB32(),
                  subtitle: subtitle!,
                  title: title!,
                );
                BlocProvider.of<Addnotecubit>(context).addnote(item);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            child: BlocBuilder<Addnotecubit, Addnotecubitstate>(
              builder: (context, state) {
                return Customaddbotton(
                  isloading: state is Addnotecubitloading ? true : false,
                );
              },
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}



