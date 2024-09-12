import 'package:IbtikarHR/features/auth/model/Response/LoginResponse.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserInitial());

  onUpdateUserData(LoginResponse model){
    emit(UserUpdateState(model: model, changed: !state.changed));
  }

}
