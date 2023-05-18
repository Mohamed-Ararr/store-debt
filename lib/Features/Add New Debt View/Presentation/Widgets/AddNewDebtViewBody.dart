import 'package:flutter/material.dart';
import 'package:storedebt/Features/Add%20New%20Debt%20View/Presentation/Widgets/AddNewDebtInputs.dart';

import '../../../../Constants.dart';
import '../../../../Core/Custom Mades/CustomButton.dart';
import '../../../../Core/Custom Mades/CustomTextField.dart';
import '../../../../Core/Style Utils/AppFonts.dart';

class AddNewDebtViewBody extends StatelessWidget {
  const AddNewDebtViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("إضافة دين", style: AppFonts.miniAppTitleStyle),
        centerTitle: true,
        elevation: 0,
      ),
      body: AddNewDebtInputs(),
    );
  }
}
