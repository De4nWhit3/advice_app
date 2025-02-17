import 'package:advisor/domain/entities/advice_entity.dart';
import 'package:advisor/domain/failures/failures.dart';
import 'package:dart_either/dart_either.dart';

abstract class AdviceRepo {
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource();
}
