part of 'advisor_bloc.dart';

@immutable
sealed class AdvisorEvent {}

class RequestAdviceEvent extends AdvisorEvent {
  final String param;

  RequestAdviceEvent({required this.param});
}
