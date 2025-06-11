import 'package:dartz/dartz.dart';
import 'package:manzoma_front/core/error/failure.dart';
import 'package:manzoma_front/domain/entities/client_entity.dart';
import 'package:manzoma_front/domain/repositories/client/client_repo.dart';

class AddClientUseCase {
  final ClientRepository repository;

  AddClientUseCase(this.repository);

  Future<Either<Failure, void>> call(ClientEntity client) async {
    return await repository.addClient(client);
  }
}
