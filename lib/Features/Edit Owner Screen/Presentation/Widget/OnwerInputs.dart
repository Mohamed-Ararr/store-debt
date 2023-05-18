import 'package:flutter/material.dart';

import '../../../../Constants.dart';
import '../../../../Core/Custom Mades/CustomButton.dart';
import '../../../../Core/Custom Mades/CustomTextField.dart';

class OwnerInputs extends StatefulWidget {
  const OwnerInputs({super.key});

  @override
  State<OwnerInputs> createState() => _OwnerInputsState();
}

class _OwnerInputsState extends State<OwnerInputs> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? firstName;
  String? lastName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingLR15,
      child: Form(
        autovalidateMode: autovalidateMode,
        key: key,
        child: Column(
          children: [
            Spacer(),
            CustomTextField(
              label: "الاسم",
              hintText: "ادخل اسمك",
              onChanged: (val) {
                setState(() {
                  firstName = val;
                });
              },
              onSaved: (val) => firstName = val,
            ),
            SizedBox(height: 15),
            CustomTextField(
              label: "اللقب",
              hintText: "ادخل لقبك",
              onChanged: (val) {
                setState(() {
                  lastName = val;
                });
              },
              onSaved: (val) => lastName = val,
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
            Spacer(),
          ],
        ),
      ),
    );
  }
}
