part of 'owner_cubit.dart';

@immutable
abstract class OwnerState {}

class OwnerInitial extends OwnerState {}

class OwnerLoading extends OwnerState {}

class OwnerSuccess extends OwnerState {
  final OwnerModel ownerList;

  OwnerSuccess(this.ownerList);
}

class OwnerFailure extends OwnerState {
  final String errorMsg;

  OwnerFailure(this.errorMsg);
}
