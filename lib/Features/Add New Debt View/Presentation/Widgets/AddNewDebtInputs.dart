import 'package:flutter/material.dart';

import '../../../../Constants.dart';
import '../../../../Core/Custom Mades/CustomButton.dart';
import '../../../../Core/Custom Mades/CustomTextField.dart';

class AddNewDebtInputs extends StatefulWidget {
  const AddNewDebtInputs({super.key});

  @override
  State<AddNewDebtInputs> createState() => _AddNewDebtInputsState();
}

class _AddNewDebtInputsState extends State<AddNewDebtInputs> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? clientFirstName;
  String? clientLastName;
  String? clientDebtPrice;

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
                hintText: "ادخل اسم العميل",
                onChanged: (val) {
                  setState(() {
                    clientFirstName = val;
                  });
                },
                onSaved: (val) => clientFirstName = val,
              ),
              SizedBox(height: 15),
              CustomTextField(
                label: "اللقب",
                hintText: "ادخل لقب العميل",
                onChanged: (val) {
                  setState(() {
                    clientLastName = val;
                  });
                },
                onSaved: (val) => clientLastName = val,
              ),
              SizedBox(height: 15),
              CustomTextField(
                keyboardType: TextInputType.number,
                label: "المبلغ",
                hintText: "ادخل المبلغ",
                onChanged: (val) {
                  setState(() {
                    clientDebtPrice = val;
                  });
                },
                onSaved: (val) => clientDebtPrice = val,
              ),
              SizedBox(height: 40),
              CustomButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
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
