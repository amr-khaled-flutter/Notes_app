import 'package:notes_app/models/NoteModel.dart';

class Notescubit {}

class NotesInitial extends Notescubit {}

class NotesLoading extends Notescubit {}

class NotesSuccess extends Notescubit {
 final List<Notemodel> Notes;

  NotesSuccess(this.Notes);
}

class NotesFail extends Notescubit {
  final String message;

  NotesFail(this.message);
}
