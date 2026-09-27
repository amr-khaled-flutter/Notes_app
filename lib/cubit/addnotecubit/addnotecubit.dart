import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/const/constant.dart';
import 'package:notes_app/cubit/addnotecubit/addnotestate.dart';
import 'package:notes_app/models/NoteModel.dart';

class Addnotecubit extends Cubit<AddNotestate> {
  Addnotecubit() : super(AddNoteIntial());

  void addnot(Notemodel note) async {
    emit(AddNoteloading());
    try {
      var notesbox = Hive.box<Notemodel>(kNotesBox);
      await notesbox.add(note);
      emit(AddNotesuccess());
    } catch (e) {
      AddnoteFail(e.toString());
    }
  }
}
