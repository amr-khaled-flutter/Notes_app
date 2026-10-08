class Addnotecubitstate {}

class AddnotecubitInitial extends Addnotecubitstate {}

class Addnotecubitsuccess extends Addnotecubitstate {}

class AddnotecubitFaiuture extends Addnotecubitstate {
  String messageerror;
  AddnotecubitFaiuture(this.messageerror);
}

class Addnotecubitloading extends Addnotecubitstate {}
