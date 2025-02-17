import 'package:advisor/domain/entities/advice_entity.dart';

class AdviceUsecase {
  Future<AdviceEntity> getAdvice() async {
    await Future.delayed(Duration(seconds: 1));
    return AdviceEntity(id: 1, advice: 'Fake advice entity from use case');
  }
}
