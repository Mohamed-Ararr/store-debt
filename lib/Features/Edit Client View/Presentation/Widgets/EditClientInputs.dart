import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../../../../Constants.dart';
import '../../../../Core/Custom Mades/CustomButton.dart';
import '../../../../Core/Custom Mades/CustomDropdown.dart';
import '../../../../Core/Custom Mades/CustomTextField.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import '../../../../Core/Style Utils/AppFonts.dart';

class EditClientInputs extends StatefulWidget {
  const EditClientInputs({super.key});

  @override
  State<EditClientInputs> createState() => _EditClientInputsState();
}

class _EditClientInputsState extends State<EditClientInputs> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  String? x;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingLR15,
      child: Form(
        autovalidateMode: autovalidateMode,
        key: key,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              CustomTextField(
                label: "الاسم",
                hintText: "عدل اسم الزبون",
                onChanged: (val) {
                  setState(() {});
                },
                onSaved: (val) {},
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "اللقب",
                hintText: "عدل لقب الزبون",
                onChanged: (val) {
                  setState(() {});
                },
                onSaved: (val) {},
              ),
              SizedBox(height: 15),
              CustomTextField(
                keyboardType: TextInputType.number,
                label: "المبلغ",
                hintText: "عدل مبلغ الزبون",
                onChanged: (val) {
                  setState(() {});
                },
                onSaved: (val) {},
              ),
              SizedBox(height: 15),
              CustomDropdown(
                label: "الدفع",
                hintText: "عدل خيار الدفع",
                // onChanged: (val) {
                //   setState(() => x = val);
                // },
                onSaved: (val) => x = val,
              ),
              SizedBox(height: 25),
              CustomTextField(
                label: "التاريخ",
                hintText: "عدل تاريخ الدين",
                onChanged: (val) {
                  setState(() {});
                },
                onSaved: (val) {},
              ),
              SizedBox(height: 40),
              CustomButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    print(x);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
                buttonTitle: "تأكيد العملية",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
