import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/addnotecubit/addnotestate.dart';
import 'package:notes_app/models/NoteModel.dart';

class Addnotecubit extends Cubit<AddNotestate> {
  Addnotecubit() : super(AddNoteIntial());


  void addNote(Notemodel note){
    
  }
  
}
