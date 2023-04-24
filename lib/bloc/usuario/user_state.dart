part of 'user_bloc.dart';

@immutable
abstract class UserSate {
  final bool existUser;
  final UsuarioModel? user;

  const UserSate({this.existUser = false, this.user});
}
