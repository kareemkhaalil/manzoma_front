import 'package:dartz/dartz.dart';
import 'package:manzoma_front/domain/repositories/user/user_repository.dart';
import '../../../../core/error/failure.dart';
import '../entities/user_entity.dart';

class GetAllUsersUseCase {
  final UserRepository repository;
  GetAllUsersUseCase(this.repository);

  Future<Either<Failure, List<UserEntity>>> call() async {
    return await repository.getAllUsers();
  }
}
