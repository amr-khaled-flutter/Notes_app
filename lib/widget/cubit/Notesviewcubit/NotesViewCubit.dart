import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/classes/ItemNoteModel.dart';
import 'package:notes_app/const/constfile.dart';
import 'package:notes_app/widget/cubit/Notesviewcubit/NotesViewCubitState.dart';

class Notesviewcubit extends Cubit<NotesViewState> {
  Notesviewcubit() : super(NotesViewInitial());
  List<Itemnotemodel>? notes;
  void fetchallnotes() async {
    var notesbox = Hive.box<Itemnotemodel>(kopenbox);
    notes = notesbox.values.toList();
    emit(NotesviewSuccess());
    
  }
}
