import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manzoma_front/core/state/base_state.dart';
import 'package:manzoma_front/domain/entities/user_entity.dart';
import 'package:manzoma_front/domain/usecase/add_user_usecase.dart';
import 'package:manzoma_front/domain/usecase/get_all_users.dart';

class UserCubit extends Cubit<BaseState> {
  final GetAllUsersUseCase _getAllUsers;
  final AddUserUseCase _addUserUseCase;

  UserCubit(this._getAllUsers, this._addUserUseCase) : super(InitialState());

  Future<void> fetchUsers() async {
    emit(LoadingState());
    final result = await _getAllUsers.call();
    result.fold(
      (failure) => emit(ErrorState(failure.message)),
      (users) => emit(SuccessState(users)),
    );
  }

  Future<void> addUser(UserEntity user) async {
    emit(LoadingState());
    final result = await _addUserUseCase(user);
    result.fold(
      (failure) => emit(ErrorState(failure.message)),
      (_) => emit(SuccessState("User Added")),
    );
  }
}
