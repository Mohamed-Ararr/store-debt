part of 'owner_cubit.dart';

@immutable
abstract class OwnerState {}

class OwnerInitial extends OwnerState {}

class OwnerLoading extends OwnerState {}

class OwnerSuccess extends OwnerState {
  final OwnerModel owner;

  OwnerSuccess(this.owner);
}

class OwnerFailure extends OwnerState {
  final String errorMsg;

  OwnerFailure(this.errorMsg);
}
