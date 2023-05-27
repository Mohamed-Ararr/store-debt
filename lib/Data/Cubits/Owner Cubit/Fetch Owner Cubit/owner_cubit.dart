import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Data/Models/Owner%20Model/OwnerModel.dart';

part 'owner_state.dart';

class OwnerCubit extends Cubit<OwnerState> {
  OwnerCubit() : super(OwnerInitial());

  fetchOwner() {
    emit(OwnerLoading());
    try {
      Box<OwnerModel> owBox = Hive.box(ownerBox);
      OwnerModel owner =
          owBox.values.toList().elementAt(owBox.values.toList().length - 1);
      emit(OwnerSuccess(owner));
    } catch (e) {
      emit(OwnerFailure(e.toString()));
    }
  }
}
