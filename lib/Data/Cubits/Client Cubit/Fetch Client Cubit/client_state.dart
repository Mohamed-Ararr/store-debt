part of 'client_cubit.dart';

@immutable
abstract class ClientState {}

class ClientInitial extends ClientState {}

class ClientLoading extends ClientState {}

class ClientSuccess extends ClientState {
  final List<ClientModel> clientList;

  ClientSuccess(this.clientList);
}

class ClientFailure extends ClientState {
  final String errorMsg;

  ClientFailure(this.errorMsg);
}
