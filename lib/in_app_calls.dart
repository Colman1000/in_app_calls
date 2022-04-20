library in_app_calls;

import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  const Btn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 800,
      child: Container(
        color: Colors.green,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: const Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
