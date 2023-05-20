import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';
import 'package:storedebt/Core/Style%20Utils/AppFonts.dart';

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
    return Text("Result");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("Suggestation");
  }
}
