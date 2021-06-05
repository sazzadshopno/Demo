import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial(value: 0));
  void increment() => emit(GlobalInitial(value: state.value! + 1));
}
