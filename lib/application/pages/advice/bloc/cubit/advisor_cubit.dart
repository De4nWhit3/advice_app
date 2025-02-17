import 'package:advisor/domain/use_cases/advice_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advisor_state.dart';

class AdvisorCubit extends Cubit<AdvisorCubitState> {
  AdvisorCubit() : super(AdvisorCubitStateInitial());
  final AdviceUsecase adviceUsecase = AdviceUsecase();
  // other use cases

  void adviceRequestedEvent() async {
    emit(AdvisorCubitStateLoading());
    final advice = await adviceUsecase.getAdvice();
    // emit(AdvisorCubitStateError(errorMessage: 'Error message from cubit'));
    emit(AdvisorCubitStateLoaded(advice: advice.advice));
  }
}
