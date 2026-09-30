import 'package:notes_app/models/NoteModel.dart';

class Notescubitstate {}

class NotescubitLoading extends Notescubitstate {}

class NotescubitFaliure extends Notescubitstate {
  final String message;
  NotescubitFaliure(this.message);
}

class NotescubitSuccess extends Notescubitstate {
  List<Notemodel> Notes;
  NotescubitSuccess(this.Notes);
}

class NotesInitial extends Notescubitstate {}
