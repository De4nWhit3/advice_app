import 'package:advisor/domain/entities/advice_entity.dart';
import 'package:advisor/domain/failures/failures.dart';
import 'package:dart_either/dart_either.dart';

class AdviceUsecase {
  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    await Future.delayed(Duration(milliseconds: 200));
    // return Right(
    //   AdviceEntity(id: 1, advice: 'Fake advice entity from use case'),
    // );
    return Left(GeneralFailure());
  }
}
