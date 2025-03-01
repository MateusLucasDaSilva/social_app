import 'package:flutter/material.dart';

class InputSearchWidget extends StatelessWidget {
  const InputSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: 'Qual foto procura?'),
    );
  }
}
