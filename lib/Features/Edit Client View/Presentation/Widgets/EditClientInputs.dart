import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Fetch%20Client%20Cubit/client_cubit.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import '../../../../Constants.dart';
import '../../../../Core/Custom Mades/CustomButton.dart';
import '../../../../Core/Custom Mades/CustomDropdown.dart';
import '../../../../Core/Custom Mades/CustomTextField.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import '../../../../Core/Style Utils/AppFonts.dart';

class EditClientInputs extends StatefulWidget {
  const EditClientInputs({super.key, required this.client});

  final ClientModel client;

  @override
  State<EditClientInputs> createState() => _EditClientInputsState();
}

class _EditClientInputsState extends State<EditClientInputs> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? firstName;
  String? lastName;
  String? price;
  bool? isPaid;
  String? date;

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
                hintText: widget.client.clientFN,
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
                hintText: widget.client.clientLN,
                onChanged: (val) {
                  setState(() {
                    lastName = val;
                  });
                },
                onSaved: (val) => lastName = val,
              ),
              SizedBox(height: 15),
              CustomTextField(
                keyboardType: TextInputType.number,
                label: "المبلغ",
                hintText: widget.client.price,
                onChanged: (val) {
                  setState(() {
                    price = val;
                  });
                },
                onSaved: (val) => price = val,
              ),
              SizedBox(height: 15),
              CustomDropdown(
                label: "الدفع",
                hintText: widget.client.isPaid ? "مدفوع" : "غير مدفوع",
                onChanged: (val) {
                  setState(() {
                    isPaid = val == "مدفوع" ? true : false;
                  });
                },
                onSaved: (val) => isPaid = val == "مدفوع" ? true : false,
              ),
              SizedBox(height: 25),
              CustomTextField(
                label: "التاريخ",
                hintText: widget.client.date,
                onChanged: (val) {
                  setState(() {
                    date = val;
                  });
                },
                onSaved: (val) => date = val,
              ),
              SizedBox(height: 40),
              CustomButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    widget.client.clientFN =
                        firstName ?? widget.client.clientFN;
                    widget.client.clientLN = lastName ?? widget.client.clientLN;
                    widget.client.price = price ?? widget.client.clientFN;
                    widget.client.isPaid = isPaid ?? widget.client.isPaid;
                    widget.client.date = date ?? widget.client.date;
                    widget.client.save();
                    BlocProvider.of<ClientCubit>(context).fetchClients();
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
