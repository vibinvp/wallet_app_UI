import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String iconimagepath;
  final String icontext;
  const MyButtons({
    Key? key, required this.iconimagepath, required this.icontext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 80,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadiusDirectional.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 10)
              ]),
          child: Image.asset(iconimagepath),
        ),
        const SizedBox(
          height: 9,
        ),
        Text(
          icontext,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
