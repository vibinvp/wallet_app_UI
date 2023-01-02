

import 'package:flutter/material.dart';
import 'package:walletui/util/appbarsection.dart';
import 'package:walletui/util/bottom_row.dart';
import 'package:walletui/util/mybutttons.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarSection(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Send Money',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Add your bank account',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Why to add bank account?',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'With adding your bank\naccount. you are not able to\nsend money.',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, bottom: 13),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:const Color.fromARGB(255, 189, 187, 170)),
                          child: Image.asset('lib/icons/girl.png'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButtons(
                      iconimagepath: 'lib/icons/HDFC.png',
                      icontext: 'Citi\nBank'),
                  MyButtons(
                      iconimagepath: 'lib/icons/BOA.png',
                      icontext: 'Bank of\nAmerica'),
                  MyButtons(
                      iconimagepath: 'lib/icons/sbi.png', icontext: 'SBI\nBank')
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            Container(
              width: double.infinity,
              height: 295,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    Text('Select your bank',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 30,),
                    BottomRow(iconpath: 'lib/icons/BOA.png' , maintext: 'Bank of America', subtext: '****2345',padding: 0,),
                     SizedBox(height: 20,),
                    BottomRow(iconpath: 'lib/icons/sbi.png' , maintext: 'SBI', subtext: '****9865',padding: 0,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

