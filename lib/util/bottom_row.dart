import 'package:flutter/material.dart';

class BottomRow extends StatelessWidget {
  final String iconpath;
  final String maintext;
  final String subtext;
  final double padding;
  const BottomRow({
    Key? key, required this.iconpath, required this.maintext, required this.subtext, this.padding =25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(iconpath),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        maintext,
                        style:const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Text(
                        subtext,
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade800),
                      )
                    ],
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          )
        ],
      ),
    );
  }
}
