import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Fetch%20Client%20Cubit/client_cubit.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';

import '../../../../Constants.dart';
import '../../../../Core/Style Utils/AppColors.dart';
import '../../../../Core/Style Utils/AppFonts.dart';

class DebtsStats extends StatefulWidget {
  const DebtsStats({super.key, required this.isDebt});

  final bool isDebt;

  @override
  State<DebtsStats> createState() => _DebtsStatsState();
}

class _DebtsStatsState extends State<DebtsStats> {
  List<ClientModel> clients = [];

  List<double> calculateDebtStats(List<ClientModel> clientList) {
    int debtCounter = 0;
    int paidCounter = 0;
    double paidPerc = 0;
    double debtPerc = 0;
    for (ClientModel client in clientList) {
      client.isPaid ? paidCounter++ : debtCounter++;
    }
    paidPerc = paidCounter * 100 / clientList.length;
    debtPerc = debtCounter * 100 / clientList.length;
    print("paid counter = ${paidCounter}");
    print("debt counter = ${debtCounter}");
    return [paidPerc, debtPerc];
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClientCubit, ClientState>(
      listener: (context, state) {},
      builder: (context, state) {
        state is ClientSuccess ? clients = [...state.clientList] : clients = [];

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                widget.isDebt ? "الديون" : "الدفع",
                textAlign: TextAlign.start,
                style: AppFonts.defaultWithBoldWhite,
              ),
            ),
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .6,
                    height: 10,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: bRadius10,
                    ),
                  ),
                  Container(
                    width: widget.isDebt
                        ? (MediaQuery.of(context).size.width * 0.6) *
                            calculateDebtStats(clients)[1].round() /
                            100
                        : (MediaQuery.of(context).size.width * 0.6) *
                            calculateDebtStats(clients)[0].round() /
                            100,
                    height: 10,
                    decoration: BoxDecoration(
                      color: AppColors.lightRed,
                      borderRadius: bRadius10,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                widget.isDebt
                    ? "${calculateDebtStats(clients)[1].round()}%"
                    : "${calculateDebtStats(clients)[0].round()}%",
                textAlign: TextAlign.end,
                style: AppFonts.defaultWithBoldWhite,
              ),
            ),
          ],
        );
      },
    );
  }
}
