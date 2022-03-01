// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:new_grazac_challenge_1/screens/transaction_page_screen.dart';

class BankHomeScreen extends StatelessWidget {
  const BankHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SafeArea(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image(
                  image: AssetImage('images/Ellipse 112.jpg'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Hi Divine',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
                Image(
                  height: 20,
                  color: Colors.brown,
                  image: AssetImage(
                    'images/Bye.png',
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      'Add Money',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image(
                      image: AssetImage('images/add_icon.png'),
                    ),
                    SizedBox(
                      width: 20,
                    )

                    // Icon(
                    //   Icons.add,
                    //   color: Colors.blue,
                    // )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Column(
                children: [
                Text(
                  'Account Balance',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text('₦', style: TextStyle(fontSize: 20)),
                    Text(
                      '2,580,440.30',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Account Number:'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.copy,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ),
                    Text('1100326447')
                  ],
                )
              ]),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade900,
                    Colors.black,
                  ],
                  stops: [
                    0.4,
                    0.5,
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, fixedSize: Size(50, 20)),
                      onPressed: () {
                        var screen = TransactionPageScreen();
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => screen));
                      },
                      child: Image(
                        image: AssetImage(
                          'images/Send.jpg',
                        ),
                      ),
                    ),
                    Text(
                      'Transfer',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, fixedSize: Size(50, 20)),
                      onPressed: () {},
                      child: Image(
                        image: AssetImage(
                          'images/add_icon.png',
                        ),
                      ),
                    ),
                    Text(
                      'Top Up',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, fixedSize: Size(50, 20)),
                      onPressed: () {},
                      child: Image(
                        height: 22,
                        image: AssetImage(
                          'images/pay_bill.png',
                        ),
                      ),
                    ),
                    Text(
                      'Pay Bills',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, fixedSize: Size(50, 20)),
                      onPressed: () {},
                      child: Image(
                        image: AssetImage(
                          'images/bag_icon.png',
                        ),
                      ),
                    ),
                    Text(
                      'Loans',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15,
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Recent Transactions',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(color: Colors.purple.shade800),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, minimumSize: Size(0, 0)),
                  onPressed: () {},
                  child: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, minimumSize: Size(0, 0)),
                  onPressed: () {},
                  child: Text(
                    'Credit',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, minimumSize: Size(0, 0)),
                  onPressed: () {},
                  child: Text(
                    'Debit',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Row(
              children: [
                Image(
                  image: AssetImage('images/Time Circle.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Today'),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.only(right: 26.0, left: 14),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(
                        'images/Ellipse 37.jpg',
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'John Fonesca',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '10:30pm',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        ' + ₦1,800,400',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 26.0, left: 14),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(
                        'images/Ellipse 38.jpg',
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'John Fonesca',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '10:30pm',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        ' - ₦1,800,400',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 26.0, left: 14),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(
                        'images/Ellipse 37.png',
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'John Fonesca',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '10:30pm',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        ' + ₦1,800,400',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 26.0),
          //   child: Container(
          //     child: Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          //           child: Image(
          //             image: AssetImage(
          //               'images/Ellipse 37.jpg',
          //             ),
          //           ),
          //         ),
          //         Column(
          //           children: [
          //             Text(
          //               'John Fonesca',
          //               style: TextStyle(fontWeight: FontWeight.bold),
          //             ),
          //             Text(
          //               '10:30pm',
          //               style: TextStyle(fontSize: 10),
          //             ),
          //           ],
          //         ),
          //         Spacer(),
          //         Row(
          //           children: [
          //             Text(
          //               ' - ₦1,800,400',
          //               style: TextStyle(color: Colors.red),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          //    ListView()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.swap_vert), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        onTap: (int index) {},
      ),
    );
  }
}
