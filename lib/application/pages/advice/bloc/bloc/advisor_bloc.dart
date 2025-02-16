import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advisor_event.dart';
part 'advisor_state.dart';

class AdvisorBloc extends Bloc<AdvisorEvent, AdvisorState> {
  AdvisorBloc() : super(AdvisorInitialState()) {
    // the first state emitted from the bloc
    on<RequestAdviceEvent>((event, emit) async {
      event.param; // if you wanted to access the param specified in the event
      emit(AdvisorLoadingState());
      // business logic
      // eg: get an advice
      debugPrint('fake advice triggered');
      await Future.delayed(Duration(seconds: 3), () => {});
      debugPrint('Got an advice');
      emit(AdvisorLoadedState(advice: 'fake advice to test bloc'));
    });
  }
}
