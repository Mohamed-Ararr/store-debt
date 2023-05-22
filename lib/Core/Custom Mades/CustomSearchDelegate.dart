import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Constants.dart';
import 'package:storedebt/Core/General%20Utils/EmptyListWidget.dart';
import 'package:storedebt/Core/General%20Utils/LoadingWidget.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';
import 'package:storedebt/Core/Style%20Utils/AppFonts.dart';
import 'package:storedebt/Data/Cubits/Client%20Cubit/Fetch%20Client%20Cubit/client_cubit.dart';
import 'package:storedebt/Data/Models/Client%20Model/ClientModel.dart';
import 'package:storedebt/Features/AllDebt%20Screen/Presentation/Widgets/DebtClientCard.dart';

import '../../Features/AllDebt Screen/Presentation/Widgets/DebtClientCardWithSlidable.dart';
import '../../Features/AllDebt Screen/Presentation/Widgets/DebtListView.dart';

class CustomSearch extends SearchDelegate {
  @override
  String? get searchFieldLabel => "ابحث عن اسم الزبون";

  @override
  TextStyle? get searchFieldStyle {
    return AppFonts.font_18_white;
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      canvasColor: AppColors.whiteColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.purpleColor.withAlpha(180),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query.isEmpty
              ? GoRouter.of(context).pop([context, query])
              : query = "";
        },
        icon: const Icon(FontAwesomeIcons.xmark),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => GoRouter.of(context).pop(),
      icon: Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<ClientCubit, ClientState>(builder: (context, state) {
      if (state is ClientSuccess) {
        List<ClientModel> suggestions = state.clientList.where((client) {
          final result = "${client.clientFN} ${client.clientLN}".toLowerCase();
          final input = query.toLowerCase();
          return result.contains(input);
        }).toList();
        if (state.clientList.isEmpty) {
          return EmptyListWidget(style: AppFonts.regular20BoldBlack);
        } else {
          return Padding(
            padding: paddingAll15,
            child: ListView.builder(
              itemCount: suggestions.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return DebtClientCardWithSlidable(client: suggestions[index]);
              },
            ),
          );
        }
      } else if (state is ClientFailure) {
        return Center(child: Text(state.errorMsg));
      } else {
        return LoadingWidget();
      }
    });
  }
}
