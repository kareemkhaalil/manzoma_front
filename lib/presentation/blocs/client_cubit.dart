import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manzoma_front/core/state/base_state.dart';
import 'package:manzoma_front/domain/entities/client_entity.dart';
import 'package:manzoma_front/domain/usecase/client/add_client_usecase.dart';

class ClientCubit extends Cubit<BaseState> {
  final AddClientUseCase _addClientUseCase;

  ClientCubit(this._addClientUseCase) : super(InitialState());

  // Future<void> fetchClients() async {
  //   emit(LoadingState());
  //   final result = await _getAllUsers.call();
  //   result.fold(
  //     (failure) => emit(ErrorState(failure.message)),
  //     (users) => emit(SuccessState(users)),
  //   );
  // }

  Future<void> addClient(ClientEntity client) async {
    emit(LoadingState());
    final result = await _addClientUseCase(client);
    result.fold(
      (failure) => emit(ErrorState(failure.message)),
      (_) => emit(SuccessState("Client Added")),
    );
  }
}
