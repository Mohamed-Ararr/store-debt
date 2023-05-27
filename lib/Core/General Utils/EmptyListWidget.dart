import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Constants.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key, required this.style});

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            emptyPicture,
            height: 80,
          ),
          SizedBox(height: 15),
          Text(
            "لا توجد ديون حاليا",
            style: style,
          ),
        ],
      ),
    );
  }
}
