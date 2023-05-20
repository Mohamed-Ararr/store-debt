import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Add%20Client%20Cubit/add_client_cubit.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Fetch%20Client%20Cubit/client_cubit.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import '../../../../Constants.dart';
import '../../../../Core/Custom Mades/CustomButton.dart';
import '../../../../Core/Custom Mades/CustomTextField.dart';
import '../../../../Core/General Utils/Months.dart';

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
    return BlocConsumer<AddClientCubit, AddClientState>(
      listener: (context, state) {
        if (state is AddClientSuccess) {
          BlocProvider.of<ClientCubit>(context).fetchClients();
          GoRouter.of(context).pop();
        }
      },
      builder: (context, state) {
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
                        ClientModel client = ClientModel(
                          clientFN: clientFirstName!,
                          clientLN: clientLastName!,
                          price: clientDebtPrice!,
                          isPaid: false,
                          date:
                              "${DateTime.now().year} ${Months.months[DateTime.now().month - 1]} ${DateTime.now().day}",
                        );
                        BlocProvider.of<AddClientCubit>(context)
                            .addNewClient(client);
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
      },
    );
  }
}
