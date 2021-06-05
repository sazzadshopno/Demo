part of 'global_cubit.dart';

abstract class GlobalState {
  int? value;
  GlobalState({this.value});
}

class GlobalInitial extends GlobalState {
  GlobalInitial({int? value}) : super(value: value);
}
