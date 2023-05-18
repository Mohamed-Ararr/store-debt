import "package:flutter/material.dart";

import "../../Constants.dart";
import "../Style Utils/AppColors.dart";

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonTitle, this.onPressed});

  final String buttonTitle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightGreen,
        elevation: 0,
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
        shape: RoundedRectangleBorder(borderRadius: bRadius10),
      ),
      onPressed: onPressed,
      child: Text(buttonTitle),
    );
  }
}
