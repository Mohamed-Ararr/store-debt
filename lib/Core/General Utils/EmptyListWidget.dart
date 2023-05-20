import 'package:flutter/material.dart';

import '../Style Utils/AppFonts.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "لا توجد ديون حاليا",
        style: AppFonts.regular20BoldWhite,
      ),
    );
  }
}
