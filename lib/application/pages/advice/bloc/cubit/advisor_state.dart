part of 'advisor_cubit.dart';

sealed class AdvisorCubitState extends Equatable {
  const AdvisorCubitState();

  @override
  List<Object> get props => [];
}

final class AdvisorCubitStateInitial extends AdvisorCubitState {}

final class AdvisorCubitStateLoading extends AdvisorCubitState {}

final class AdvisorCubitStateLoaded extends AdvisorCubitState {
  final String advice;

  const AdvisorCubitStateLoaded({required this.advice});

  @override
  List<Object> get props => [advice];
}

final class AdvisorCubitStateError extends AdvisorCubitState {
  final String errorMessage;

  const AdvisorCubitStateError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
