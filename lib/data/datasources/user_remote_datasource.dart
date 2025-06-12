import 'package:manzoma_front/data/models/user/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getAllUsers();
  Future addUser(UserModel user);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final SupabaseClient client;

  UserRemoteDataSourceImpl(this.client);

  @override
  // get all users
  Future<List<UserModel>> getAllUsers() async {
    final response = await client.from('users').select();
    return (response as List)
        .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  // add user
  @override
  Future addUser(UserModel user) async {
    final response = await client.from('users').insert(user.toJson());
    return response;
  }
}
