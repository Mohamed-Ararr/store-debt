import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Data/Cubits/Owner%20Cubit/Fetch%20Owner%20Cubit/owner_cubit.dart';
import 'package:storedebt/Data/Models/Owner%20Model/OwnerModel.dart';

import '../../../../Constants.dart';
import '../../../../Core/Custom Mades/CustomButton.dart';
import '../../../../Core/Custom Mades/CustomTextField.dart';
import '../../../../Data/Cubits/Owner Cubit/Add Owner Cubit/add_owner_cubit.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
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
                    OwnerModel owner = OwnerModel(
                      ownerFN: firstName!,
                      ownerLN: lastName!,
                    );
                    BlocProvider.of<AddOwnerCubit>(context).addOwner(owner);
                    print(owner.ownerFN);
                    print(owner.ownerLN);
                    GoRouter.of(context).pop();
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
