import 'package:flutter/material.dart';

class EditClientViewBody extends StatelessWidget {
  const EditClientViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تعديل بيانات الزبون"),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
