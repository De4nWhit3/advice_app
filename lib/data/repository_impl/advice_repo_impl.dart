import 'package:advisor/data/data_sources/advice_remote_datasource.dart';
import 'package:advisor/domain/entities/advice_entity.dart';
import 'package:advisor/domain/failures/failures.dart';
import 'package:advisor/domain/repositories/advice_repo.dart';
import 'package:dart_either/dart_either.dart';

class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteDatasource adviceRemoteDatasource =
      AdviceRemoteDatasourceImpl();

  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource() async {
    final result = await adviceRemoteDatasource.getRandomAdviceFromApi();
    return Right(result);
  }
}
