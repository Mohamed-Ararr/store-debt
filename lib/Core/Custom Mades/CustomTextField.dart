import 'package:flutter/material.dart';

import '../../Constants.dart';
import '../Style Utils/AppColors.dart';
import '../Style Utils/AppFonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onChanged,
      this.onSaved,
      required this.label,
      required this.hintText,
      this.keyboardType});

  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final String label;
  final String hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return "حقل الإدخال مطلوب ، املأه من فضلك!";
        } else {
          return null;
        }
      },
      maxLength: 15,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppFonts.font_18_white,
        hintText: hintText,
        hintStyle: AppFonts.font_15_white.copyWith(
          color: AppColors.greyColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: bRadius10,
          borderSide: BorderSide(color: AppColors.lightGreen, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: bRadius10,
          borderSide: BorderSide(color: AppColors.redColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: bRadius10,
          borderSide: BorderSide(color: AppColors.beigeColor, width: 2),
        ),
        border: OutlineInputBorder(borderRadius: bRadius10),
      ),
    );
  }
}
