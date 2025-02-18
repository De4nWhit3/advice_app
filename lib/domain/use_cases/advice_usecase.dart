import 'package:advisor/data/repository_impl/advice_repo_impl.dart';
import 'package:advisor/domain/entities/advice_entity.dart';
import 'package:advisor/domain/failures/failures.dart';
import 'package:dart_either/dart_either.dart';

class AdviceUsecase {
  final adviceRepo = AdviceRepoImpl();

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDataSource();
  }
}
