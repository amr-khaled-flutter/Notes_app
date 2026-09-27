class AddNodeCubitStates {}

class InitialState extends AddNodeCubitStates {}

class AddNodeSuccess extends AddNodeCubitStates {}

class AddNodeLoading extends AddNodeCubitStates {}

class AddNodeFail extends AddNodeCubitStates {
  String message;
  AddNodeFail(this.message);
}
