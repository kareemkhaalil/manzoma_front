import 'package:dartz/dartz.dart';
import 'package:manzoma_front/core/error/failure.dart';
import 'package:manzoma_front/data/datasources/user_remote_datasource.dart';
import 'package:manzoma_front/data/models/user/user_model.dart';
import 'package:manzoma_front/domain/entities/user_entity.dart';
import 'package:manzoma_front/domain/repositories/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  // get all users
  Future<Either<Failure, List<UserEntity>>> getAllUsers() async {
    try {
      final users = await remoteDataSource.getAllUsers();
      return Right(users);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  // add user
  Future<Either<Failure, void>> addUser(UserEntity user) async {
    try {
      final userModel = UserModel(
        name: user.name,
        email: user.email,
        username: user.username,
        password: user.password,
        role: user.role,
        clientId: user.clientId,
        branchIds: user.branchIds,
        status: user.status,
        createdAt: user.createdAt,
      );
      await remoteDataSource.addUser(userModel);
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
