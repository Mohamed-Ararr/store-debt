import 'package:flutter/material.dart';
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
