// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'add_owner_cubit.dart';

@immutable
abstract class AddOwnerState {}

class AddOwnerInitial extends AddOwnerState {}

class AddOwnerLoading extends AddOwnerState {}

class AddOwnerSuccess extends AddOwnerState {}

class AddOwnerFailure extends AddOwnerState {
  final String errorMsg;

  AddOwnerFailure({
    required this.errorMsg,
  });
}
