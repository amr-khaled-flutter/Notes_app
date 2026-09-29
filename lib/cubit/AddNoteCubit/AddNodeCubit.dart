import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/const/constant.dart';
import 'package:notes_app/cubit/AddNoteCubit/AddNodeCubitStates.dart';
import 'package:notes_app/models/NoteModel.dart';

class Addnodecubit extends Cubit<AddNodeCubitStates> {
  Addnodecubit() : super(InitialState());

  void addnote(Notemodel note) async {
    emit(AddNodeLoading());
    try {
      Box notebox = Hive.box<Notemodel>(kNotesBox);
      await notebox.add(note);
      emit(AddNodeSuccess());
    } catch (e) {
      AddNodeFail(e.toString());
    }
  }
}
