import 'package:dartz/dartz.dart';
import 'package:manzoma_front/domain/entities/user_entity.dart';
import '../../../../core/error/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UserEntity>>> getAllUsers();
  Future<Either<Failure, void>> addUser(UserEntity user);
}
