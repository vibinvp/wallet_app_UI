import 'package:flutter/material.dart';
import 'package:walletui/util/appbarsection.dart';
import 'package:walletui/util/bottom_row.dart';

class PayMoney extends StatelessWidget {
  const PayMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarSection(),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Send Money',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue.shade100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/icons/money.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'To your\nOwn account',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/icons/payment.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'To other\nBank account',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19, vertical: 20),
                    child: Text(
                      'Send to mobile contact',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 19,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter Name or Mobile Number',
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const BottomRow(
              iconpath: 'lib/icons/men1.png',
              maintext: 'Charlotte',
              subtext: '9052457643'),
          const SizedBox(
            height: 5,
          ),
          const BottomRow(
              iconpath: 'lib/icons/men1.png',
              maintext: 'James',
              subtext: '9052457643'),
          const SizedBox(
            height: 5,
          ),
          const BottomRow(
              iconpath: 'lib/icons/men1.png',
              maintext: 'Noah',
              subtext: '9052457643'),
        ],
      )),
    );
  }
}
