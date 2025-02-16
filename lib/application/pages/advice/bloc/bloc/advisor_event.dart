part of 'advisor_bloc.dart';

@immutable
sealed class AdvisorEvent extends Equatable {}

class RequestAdviceEvent extends AdvisorEvent {
  final String param;

  RequestAdviceEvent({required this.param});

  @override
  List<Object?> get props => [];
}
