import 'package:flutter/material.dart';

class CustumContainer extends StatelessWidget {
  final int num;
  final double num2;

  const CustumContainer({
    super.key,
    required this.num,
    required this.num2,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: num,
      itemBuilder: (context, index) => Container(
        height: num2,
        color: const Color.fromARGB(255, 174, 143, 247),
      ),
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 60,
        );
      },
    );
  }
}
