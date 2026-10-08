import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/classes/ItemNoteModel.dart';
import 'package:notes_app/const/constfile.dart';
import 'package:notes_app/widget/cubit/AddNoteCubitState.dart';

class Addnotecubit extends Cubit<Addnotecubitstate> {
  Addnotecubit() : super(AddnotecubitInitial());
  Color color = Color(0xffAC3931);

  void addnote(Itemnotemodel item) {
    try {
      emit(Addnotecubitloading());
      var hivebox = Hive.box<Itemnotemodel>(kopenbox);
      hivebox.add(item);
      emit(Addnotecubitsuccess());
    } catch (e) {
      emit(AddnotecubitFaiuture(e.toString()));
    }
  }
}
