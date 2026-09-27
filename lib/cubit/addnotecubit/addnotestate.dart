class AddNotestate {}

class AddNoteIntial extends AddNotestate {}

class AddNoteloading extends AddNotestate {}

class AddNotesuccess extends AddNotestate {}

class AddnoteFail extends AddNotestate {
  final String message;
  AddnoteFail(this.message);
}
