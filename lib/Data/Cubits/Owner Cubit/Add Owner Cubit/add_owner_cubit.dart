import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Data/Models/Owner%20Model/OwnerModel.dart';

part 'add_owner_state.dart';

class AddOwnerCubit extends Cubit<AddOwnerState> {
  AddOwnerCubit() : super(AddOwnerInitial());

  addOwner(OwnerModel owner) async {
    emit(AddOwnerLoading());
    try {
      Box<OwnerModel> owBox = Hive.box(ownerBox);
      await owBox.add(owner);
      emit(AddOwnerSuccess());
    } catch (e) {
      emit(AddOwnerFailure(errorMsg: e.toString()));
    }
  }
}
