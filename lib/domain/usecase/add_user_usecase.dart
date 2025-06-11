import 'package:dartz/dartz.dart';
import 'package:manzoma_front/core/error/failure.dart';
import 'package:manzoma_front/domain/entities/user_entity.dart';
import 'package:manzoma_front/domain/repositories/user/user_repository.dart';

class AddUserUseCase {
  final UserRepository repository;

  AddUserUseCase(this.repository);

  Future<Either<Failure, void>> call(UserEntity user) async {
    return await repository.addUser(user);
  }
}
