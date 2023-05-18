import 'package:flutter/material.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Core/Custom%20Mades/CustomButton.dart';
import 'package:storedebt/Core/Custom%20Mades/CustomTextField.dart';
import 'package:storedebt/Features/Edit%20Owner%20Screen/Presentation/Widget/OnwerInputs.dart';

import '../../../../Core/Style Utils/AppFonts.dart';

class EditOwnerViewBody extends StatelessWidget {
  const EditOwnerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "تغيير معلومات المالك",
          style: AppFonts.miniAppTitleStyle,
        ),
        centerTitle: true,
      ),
      body: OwnerInputs(),
    );
  }
}
