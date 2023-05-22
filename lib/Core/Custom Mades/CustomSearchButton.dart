import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Constants.dart';
import 'CustomSearchDelegate.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: bRadiusHalf,
      onTap: () => showSearch(context: context, delegate: CustomSearch()),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 20,
        ),
      ),
    );
  }
}
