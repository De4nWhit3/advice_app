import 'package:advisor/domain/failures/failures.dart';
import 'package:advisor/domain/use_cases/advice_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advisor_state.dart';

String serverFailureMessage = 'Server failure occurred!';
String cacheFailureMessage = 'Cache failure occurred!';
String defaultFailureMessage = 'Default error OR general failure occurred!';

class AdvisorCubit extends Cubit<AdvisorCubitState> {
  AdvisorCubit() : super(AdvisorCubitStateInitial());
  final AdviceUsecase adviceUsecase = AdviceUsecase();
  // other use cases

  void adviceRequestedEvent() async {
    emit(AdvisorCubitStateLoading());
    final result = await adviceUsecase.getAdvice();
    // emit(AdvisorCubitStateError(errorMessage: 'Error message from cubit'));
    result.fold(
      ifLeft:
          (value) => emit(
            AdvisorCubitStateError(errorMessage: _mapFailureToMessage(value)),
          ),
      ifRight: (value) => emit(AdvisorCubitStateLoaded(advice: value.advice)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case CacheFailure:
        return cacheFailureMessage;
      default:
        return defaultFailureMessage;
    }
  }
}
