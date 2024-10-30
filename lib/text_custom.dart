import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String name;
  const MyText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name',
      style: TextStyle(color: Colors.white),
    );
  }
}
