part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUserEvent extends UserEvent {
  final UsuarioModel user;

  ActivateUserEvent({required this.user});
}

class ChangeUserAgeEvent extends UserEvent {
  final int age;
  ChangeUserAgeEvent(this.age);
}

class ChangeUserProfessionEvent extends UserEvent {
  final String profession;
  ChangeUserProfessionEvent(this.profession);
}

class DeleteUserEvent extends UserEvent {}
