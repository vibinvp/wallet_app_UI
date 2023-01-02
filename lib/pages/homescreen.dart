import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletui/pages/pay.dart';
import 'package:walletui/pages/send_money.dart';
import 'package:walletui/util/bottom_row.dart';

import '../util/mybutttons.dart';
import '../util/mycard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {},
        child: Icon(Icons.currency_rupee),
        backgroundColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top:15.0,bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.pink[200],
                    )),
                IconButton(
                    onPressed: () {},
                    icon:  Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.pink[200],
                    ))
              ],
            ),
          )),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'My Wallet ',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.grey[400], shape: BoxShape.circle),
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // card section
          Container(
            height: 200,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                  money: '₹5,259,20',
                  cardnumber: '****3476',
                  cardexpiredate: '20/24',
                  Color: Colors.deepPurple.shade300,
                  cardname: 'lib/icons/visa.png',
                ),
                MyCard(
                  money: '₹2,223,80',
                  cardnumber: '****3476',
                  cardexpiredate: '25/22',
                  Color: Colors.blue.shade300,
                  cardname: 'lib/icons/master.png',
                  iconsize: 30,
                  size: 20,
                ),
                MyCard(
                  money: '₹7,869,78',
                  cardnumber: '****3476',
                  cardexpiredate: '29/24',
                  Color: Colors.green.shade300,
                  cardname: 'lib/icons/rupay.png',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const ExpandingDotsEffect(),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return SendMoney();
                      
                    },));
                  },
                  child: const  MyButtons(
                    iconimagepath: 'lib/icons/next.png',
                    icontext: 'Send',
                  ),
                ),
                GestureDetector(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return PayMoney();
                      
                    },));
                  },
                  child: MyButtons(
                    iconimagepath: 'lib/icons/wallet.png',
                    icontext: 'Pay',
                  ),
                ),
                MyButtons(
                  iconimagepath: 'lib/icons/bill.png',
                  icontext: 'Bill',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const BottomRow(
              iconpath: 'lib/icons/analysis.png',
              maintext: 'Statistics',
              subtext: 'Payment and Income'),
          const SizedBox(
            height: 20,
          ),
          const BottomRow(
              iconpath: 'lib/icons/cash-flow.png',
              maintext: 'Transactions',
              subtext: 'Transaction history')
        ],
      )),
    );
  }
}
