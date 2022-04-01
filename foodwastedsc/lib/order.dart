import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:foodwastedsc/profilePage.dart';
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'editmenu.dart';
import 'profilePage.dart';

class GeneratedOrderPageWidget extends StatelessWidget {
  // final String item1;
  // final String item2;
  // final String item3;
  // final String item4;
  // final String item5;

  // final int quan1;
  // final int quan2;
  // final int quan3;
  // final int quan4;
  // final int quan5;

  @override
  Widget build(BuildContext context) {
    final rightBox = new Expanded(
      child: new Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: 500.0,
            width: 640.0,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 6.0,
                  offset: Offset(0.0, 8.0),
                ),
              ],
            ),
            child: new Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                  alignment: Alignment(-0.9, 0.2),
                  child: new Text(
                    'Menu',
                    textAlign: TextAlign.right,
                    style: new TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                  alignment: Alignment(-0.68, 0.2),
                  child: new Text(
                    'Choose the item(s) you would like and number of servings for each.',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 30, 20, 0),
                  alignment: Alignment(-0.85, 0.2),
                  child: new Text(
                    'Item:                                                    Quantity:',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 27,
                  endIndent: 27,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                  alignment: Alignment(-0.78, 0.2),
                  child: Text(
                    'Salmon                                     15 Servings',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 1000,
                  endIndent: 162,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                  alignment: Alignment(-0.78, 0.2),
                  child: Text(
                    'Chicken                                     13 Servings',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 1000,
                  endIndent: 162,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                  alignment: Alignment(-0.78, 0.2),
                  child: Text(
                    'Tuna                                          12 Servings',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 1000,
                  endIndent: 162,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                  alignment: Alignment(-0.78, 0.2),
                  child: Text(
                    'White Rice                                 11 Servings',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 1000,
                  endIndent: 162,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                  alignment: Alignment(-0.78, 0.2),
                  child: Text(
                    'Brown Rice                                13 Servings',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  indent: 1000,
                  endIndent: 162,
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final leftBox = new Expanded(
      child: new Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 500.0,
            width: 640.0,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 6.0,
                  offset: Offset(0.0, 8.0),
                ),
              ],
            ),
            child: new Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                  alignment: Alignment(-0.9, 0.2),
                  child: new Text(
                    'Customer Information',
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  alignment: Alignment(-0.9, 0.2),
                  child: new Text(
                    'Enter your details to have food reserved for you.',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'FiraSans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  child: new SizedBox(
                    width: 15.0,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 25, 20, 0),
                  width: 570.0,
                  child: new TextField(
                    decoration: InputDecoration(
                      labelText: "Order Name: *",
                      labelStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'FiraSans',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      fillColor: Color.fromRGBO(218, 226, 230, 1.0),
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                  child: new SizedBox(
                    width: 15.0,
                  ),
                ),
                // new GestureDetector(
                //   onTap: () {
                //     showTimePicker(
                //       context: context,
                //       initialTime: TimeOfDay(hour: 7, minute: 0),
                //       initialEntryMode: TimePickerEntryMode.input,
                //       confirmText: "CONFIRM",
                //       cancelText: "NOT NOW",
                //       helpText: "BOOKING TIME",
                //     );
                //   },
                //   child: new Text(
                //     "SELECT TIME",
                //     style: TextStyle(fontWeight: FontWeight.bold),
                //   ),
                // ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                  width: 570.0,
                  child: new TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: "Time of Arrival: *",
                      labelStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'FiraSans',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      fillColor: Color.fromRGBO(218, 226, 230, 1.0),
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                  width: 570,
                  child: new TextField(
                    decoration: InputDecoration(
                      labelText: "Email or Phone Number: ",
                      labelStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'FiraSans',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      fillColor: Color.fromRGBO(218, 226, 230, 1.0),
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    final bottomSection = new Expanded(
      child: new Row(
        children: [
          leftBox,
          rightBox,
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(218, 226, 230, 1.0),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 20, 0),
              alignment: Alignment(-0.87, 0.2),
              child: Text(
                'Order',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'FiraSans',
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            alignment: Alignment(-0.81, 0.2),
            child: Text(
              'Express checkout for customers saving them the time it would take to create an account.',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'FiraSans',
                fontSize: 15.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            indent: 100,
            endIndent: 100,
          ),
          bottomSection,
          Container(
            alignment: Alignment(0.9, -0.6),
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(250, 70),
                primary: Colors.white,
                onPrimary: Colors.black,
                textStyle: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'FiraSans',
                ),
              ),
              child: Text("Submit"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => profilePage(
                            // item1: item1;
                            // final String item2;
                            // final String item3;
                            // final String item4;
                            // final String item5;

                            // final int quan1;
                            // final int quan2;
                            // final int quan3;
                            // final int quan4;
                            // final int quan5;
                            )));
              },
            ),
          ),
        ],
      ),
    );
  }
}
