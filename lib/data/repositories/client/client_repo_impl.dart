import 'package:dartz/dartz.dart';
import 'package:manzoma_front/core/error/failure.dart';
import 'package:manzoma_front/data/datasources/client_remote_datasource.dart';
import 'package:manzoma_front/data/models/client/client_model.dart';
import 'package:manzoma_front/domain/entities/client_entity.dart';
import 'package:manzoma_front/domain/repositories/client/client_repo.dart';

class ClientRepositoryImpl implements ClientRepository {
  final ClientRemoteDatasource remoteDataSource;

  ClientRepositoryImpl(this.remoteDataSource);

  @override
  // get all clients
  Future<Either<Failure, List<ClientEntity>>> getAllClients() async {
    try {
      final clients = await remoteDataSource.getAllClients();
      return Right(clients);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  // add client
  Future<Either<Failure, void>> addClient(ClientEntity client) async {
    try {
      final clientModel = ClientsModel(
        id: client.id,
        email: client.email,
        name: client.name,
        phone: client.phone,
        status: client.status,
        createdAt: client.createdAt,
      );
      await remoteDataSource.addClient(clientModel);
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
