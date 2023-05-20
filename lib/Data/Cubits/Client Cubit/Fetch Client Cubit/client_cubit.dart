import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

part 'client_state.dart';

class ClientCubit extends Cubit<ClientState> {
  ClientCubit() : super(ClientInitial());

  fetchClients() {
    emit(ClientLoading());

    try {
      var clBox = Hive.box<ClientModel>(clientBox);
      List<ClientModel> clientsList = clBox.values.toList();
      emit(ClientSuccess(clientsList));
    } catch (e) {
      emit(ClientFailure(e.toString()));
    }
  }
}
