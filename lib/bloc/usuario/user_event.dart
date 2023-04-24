part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final UsuarioModel user;

  ActivateUser({required this.user});
}
