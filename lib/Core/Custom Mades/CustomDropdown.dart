import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';
import '../Style Utils/AppColors.dart';
import '../Style Utils/AppFonts.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.label,
    required this.hintText,
    this.onChanged,
    this.onSaved,
  });

  final String label;
  final String hintText;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      clearButtonProps: ClearButtonProps(isVisible: true),
      popupProps: PopupProps.menu(
        showSelectedItems: true,
        menuProps: MenuProps(
          borderRadius: bRadius10,
        ),
        fit: FlexFit.loose,
      ),
      dropdownButtonProps: DropdownButtonProps(
        icon: Icon(Icons.keyboard_arrow_down_rounded, size: 30),
      ),
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return "حقل الإدخال مطلوب ، املأه من فضلك!";
        } else {
          return null;
        }
      },
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
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
      ),
      items: ["مدفوع", "غير مدفوع"],
    );
  }
}
