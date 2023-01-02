import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String money;
  final String cardnumber;
  final String cardexpiredate;
  final Color;
  final String cardname;
  final double iconsize;
  final double size;

  const MyCard({
    Key? key,
    required this.money,
    required this.cardnumber,
    required this.cardexpiredate,
    required this.Color,
    required this.cardname,this.iconsize = 50, this.size = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19), color: Color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(cardname,height: iconsize,),
                  // Text(cardname,
                  //     style:const TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              height:size ,
            ),
           
          const  Text(
              'Balance',
              style: TextStyle(color: Colors.white),
            ),
           const SizedBox(
              height: 10,
            ),
            Text(money, style:const TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold)),
           const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardnumber, style: const TextStyle(color: Colors.white)),
                Text(cardexpiredate, style: const TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
