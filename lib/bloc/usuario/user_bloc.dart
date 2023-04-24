import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

//Propio
import 'package:flutter_manejadores_estados/models/usuario_model.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUserEvent>((event, emit) {
      emit(UserSetState(newUser: event.user));
    });

    on<DeleteUserEvent>((event, emit) {
      emit(const UserInitialState());
    });

    on<ChangeUserAgeEvent>((event, emit) {
      if (!state.exisetUser) return;

      emit(UserSetState(newUser: state.user!.copyWith(edad: event.age)));
    });

    on<ChangeUserProfessionEvent>((event, emit) {
      if (!state.exisetUser) return;

      final newProfessiones = state.user!.profesiones;

      emit(UserSetState(
          newUser: state.user!
              .copyWith(profesiones: [...newProfessiones, event.profession])));
    });
  }
}
