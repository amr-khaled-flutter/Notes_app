import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('Change = $change');

    super.onChange(bloc, change);
  }
}