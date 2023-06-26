import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calls_state.dart';

class CallsCubit extends Cubit<CallsState> {
  CallsCubit() : super(CallsInitial());
}
