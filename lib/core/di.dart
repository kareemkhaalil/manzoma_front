import 'package:get_it/get_it.dart';
import 'package:manzoma_front/data/datasources/client_remote_datasource.dart';
import 'package:manzoma_front/data/datasources/user_remote_datasource.dart';
import 'package:manzoma_front/data/repositories/client/client_repo_impl.dart';
import 'package:manzoma_front/data/repositories/user/user_repository_impl.dart';
import 'package:manzoma_front/domain/repositories/client/client_repo.dart';
import 'package:manzoma_front/domain/repositories/user/user_repository.dart';
import 'package:manzoma_front/domain/usecase/add_user_usecase.dart';
import 'package:manzoma_front/domain/usecase/client/add_client_usecase.dart';
import 'package:manzoma_front/domain/usecase/get_all_users.dart';
import 'package:manzoma_front/presentation/blocs/client_cubit.dart';
import 'package:manzoma_front/presentation/blocs/user_cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Register SupabaseClient
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  // User Data sources
  getIt.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(getIt()),
  );

  // Client Data sources
  getIt.registerLazySingleton<ClientRemoteDatasource>(
    () => ClientRemoteDataSourceImpl(getIt()),
  );

  // User Repositories
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(getIt()),
  );

  // Client Repositories
  getIt.registerLazySingleton<ClientRepository>(
    () => ClientRepositoryImpl(getIt()),
  );

  // Use cases
  getIt.registerLazySingleton<GetAllUsersUseCase>(
    () => GetAllUsersUseCase(getIt()),
  );

  // UserCubit
  getIt.registerFactory(() => UserCubit(getIt(), getIt()));

  // ClientCubit
  getIt.registerFactory(() => ClientCubit(getIt()));

  // AddClientUseCase
  getIt.registerLazySingleton<AddClientUseCase>(
    () => AddClientUseCase(getIt()),
  );

  // AddUserUseCase
  getIt.registerLazySingleton<AddUserUseCase>(() => AddUserUseCase(getIt()));
}
