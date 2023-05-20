import "package:flutter/material.dart";
import "package:storedebt/Data/Models/Client%20Model/ClientModel.dart";

import "Widgets/EditClientViewBody.dart";

class EditClientView extends StatelessWidget {
  const EditClientView({super.key, required this.client});

  final ClientModel client;

  @override
  Widget build(BuildContext context) {
    return EditClientViewBody(client: client);
  }
}
