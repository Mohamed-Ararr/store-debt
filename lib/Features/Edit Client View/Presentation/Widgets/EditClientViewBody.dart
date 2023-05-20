import 'package:flutter/material.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';
import 'package:storedebt/Features/Edit%20Client%20View/Presentation/Widgets/EditClientInputs.dart';
import 'package:storedebt/Features/Edit%20Owner%20Screen/Presentation/Widget/OnwerInputs.dart';

import '../../../../Core/Custom Mades/CustomButton.dart';
import '../../../../Core/Custom Mades/CustomTextField.dart';

class EditClientViewBody extends StatelessWidget {
  const EditClientViewBody({super.key, required this.client});

  final ClientModel client;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تعديل بيانات الزبون"),
        centerTitle: true,
        elevation: 0,
      ),
      body: EditClientInputs(client: client),
    );
  }
}
