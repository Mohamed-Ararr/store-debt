import "package:flutter/material.dart";

import "../Style Utils/AppColors.dart";

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(color: AppColors.whiteColor));
  }
}
