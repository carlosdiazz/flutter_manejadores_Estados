part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool exisetUser;
  final UsuarioModel? user;

  const UserState({this.exisetUser = false, this.user});
}

class UserInitialState extends UserState {
  const UserInitialState() : super(exisetUser: false, user: null);
}

class UserSetState extends UserState {
  final UsuarioModel newUser;

  const UserSetState({required this.newUser})
      : super(exisetUser: true, user: newUser);
}
