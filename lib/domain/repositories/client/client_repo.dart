import 'package:dartz/dartz.dart';
import 'package:manzoma_front/core/error/failure.dart';
import 'package:manzoma_front/domain/entities/client_entity.dart';
import 'package:manzoma_front/domain/entities/user_entity.dart';

abstract class ClientRepository {
  Future<Either<Failure, List<ClientEntity>>> getAllClients();
  Future<Either<Failure, void>> addClient(ClientEntity client);
}
