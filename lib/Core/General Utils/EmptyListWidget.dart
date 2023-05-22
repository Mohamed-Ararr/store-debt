import 'package:flutter/material.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key, required this.style});

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "لا توجد ديون حاليا",
        style: style,
      ),
    );
  }
}
