import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

part 'add_client_state.dart';

class AddClientCubit extends Cubit<AddClientState> {
  AddClientCubit() : super(AddClientInitial());

  addNewClient(ClientModel client) async {
    emit(AddClientLoading());

    try {
      var clBox = Hive.box<ClientModel>(clientBox);
      await clBox.add(client);
      emit(AddClientSuccess());
    } catch (e) {
      emit(AddClientFailure(e.toString()));
    }
  }
}
