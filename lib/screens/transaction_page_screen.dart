// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:new_grazac_challenge_1/screens/final_screen.dart';

import '../size_config.dart';

class TransactionPageScreen extends StatefulWidget {
  const TransactionPageScreen({Key? key}) : super(key: key);

  @override
  State<TransactionPageScreen> createState() => _TransactionPageScreenState();
}

class _TransactionPageScreenState extends State<TransactionPageScreen> {
//  String dropdownValue = 'Savings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.black,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(children: [
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image(
                  image: AssetImage('images/chevron_left_24px.png'),
                ),
              ),
            ]),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 25),
                Text(
                  'Send money',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                        color: Colors.grey.shade300),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Savings',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image(
                            image: AssetImage('images/arrow_down.png'),
                            height: 8,
                          ),
                        ),
                      ],
                    )),
                SizedBox(width: 30),

                // DropdownButton<String>(
                //   icon: const Icon(Icons.arrow_downward),
                //   elevation: 16,
                //   style: const TextStyle(color: Colors.black),
                //   underline: Container(
                //     height: 2,
                //     color: Colors.black,
                //   ),

                //   onChanged: (String? newValue) {
                //     setState(() {
                //       dropdownValue = newValue!;
                //     });
                //   },
                //   items: <String>['Savings', 'Current']
                //       .map<DropdownMenuItem<String>>((String value) {
                //     return DropdownMenuItem<String>(
                //       value: value,
                //       child: Text(value, style: TextStyle(color: Colors.black),),
                //     );

                //   }).toList(),
                //  }
                // ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image(
                        image: AssetImage('images/Ellipse 37.png'),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Fonesca',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text('0126478172 • GT BANK',
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image(
                            image: AssetImage('images/edit.png'),
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  '₦',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '20,000',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Text('Balance: ₦40,430',
                    style: TextStyle(color: Colors.yellow.shade900))
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '1',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Text('2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Text('3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '4',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Text('5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Text('6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '7',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Text('8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Text('9',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Text('',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 110.0),
                          child: Icon(Icons.backspace),
                        ),
                        
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                minWidth: 300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                onPressed: () {
                  var screen = FinalScreen();
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => screen));
                },
                child: Text(
                  'Proceed',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(12),
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
