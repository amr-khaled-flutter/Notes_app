import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/const/constant.dart';
import 'package:notes_app/cubit/Notes_Cubit/NotesCubitState.dart';
import 'package:notes_app/models/NoteModel.dart';

class Notecubit extends Cubit<Notescubitstate> {
  Notecubit() : super(NotesInitial());

  void fetchallNote() {
    try {
      var notebox = Hive.box<Notemodel>(kNotesBox);
      List<Notemodel> Notes = notebox.values.toList();
      emit(NotescubitSuccess(Notes));
    } on Exception catch (e) {
      emit(NotescubitFaliure(e.toString()));
    }
  }
}
