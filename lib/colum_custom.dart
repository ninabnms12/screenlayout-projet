import 'package:flutter/material.dart';
import 'package:screenprojet/container_custom.dart';

class ColumCustom extends StatelessWidget {
  final double number1;
  const ColumCustom({
    super.key,
    required this.number1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: number1,
          color: const Color.fromARGB(255, 131, 94, 216),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 40,
        ),
        Expanded(
          child: CustumContainer(
            num: 100,
            num2: 80,
          ),
        ),
      ],
    );
  }
}
