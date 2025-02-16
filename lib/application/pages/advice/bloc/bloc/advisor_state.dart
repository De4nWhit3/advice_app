part of 'advisor_bloc.dart';

@immutable
sealed class AdvisorState {}

final class AdvisorInitialState extends AdvisorState {}

final class AdvisorErrorState extends AdvisorState {
  final String errorMessage;

  AdvisorErrorState({required this.errorMessage});
}

final class AdvisorLoadingState extends AdvisorState {}

final class AdvisorLoadedState extends AdvisorState {
  final String advice;

  AdvisorLoadedState({required this.advice});
}
