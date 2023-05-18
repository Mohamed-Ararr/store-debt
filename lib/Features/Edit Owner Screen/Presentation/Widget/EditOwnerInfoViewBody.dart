import 'package:flutter/material.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Core/Custom%20Text%20Fields/CustomTextField.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';

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
      body: Padding(
        padding: paddingLR15,
        child: Column(
          children: [
            Spacer(),
            CustomTextField(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
