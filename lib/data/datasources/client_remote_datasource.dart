import 'package:manzoma_front/data/models/client/client_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class ClientRemoteDatasource {
  Future<List<ClientsModel>> getAllClients();
  Future addClient(ClientsModel client);
}

class ClientRemoteDataSourceImpl implements ClientRemoteDatasource {
  final SupabaseClient client;

  ClientRemoteDataSourceImpl(this.client);

  @override
  // get all clients
  Future<List<ClientsModel>> getAllClients() async {
    final response = await client.from('clients').select();
    return (response as List)
        .map((e) => ClientsModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  // add client
  @override
  Future addClient(ClientsModel clients) async {
    final response = await client.from('clients').insert(clients.toJson());
    return response;
  }
}
