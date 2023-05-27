import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StateObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("${bloc}");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("${bloc}");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("${bloc}");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}
