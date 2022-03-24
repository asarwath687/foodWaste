import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneratedOrderPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textFieldOrderName = new Expanded(
      child: new Column(
        children: [
          SizedBox(
            width: 15.0,
          ),
          TextField(
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
              fillColor: Colors.grey,
              filled: true,
            ),
          ),
        ],
      ),
    );
    final leftBox = new Expanded(
      child: new Column(
        children: [
          Container(
            alignment: Alignment(-0.50, -0.87) ,
            height: 410.0,
            width: 430.0,
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
            padding: const EdgeInsets.fromLTRB(0, 8, 5, 0),
            alignment: Alignment(-0.80, 0.2) ,
            child: new Text(
              'Enter your details to have food reserved for you.',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'FiraSans',
                fontSize: 15.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          textFieldOrderName,
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
              )
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            alignment: Alignment(-0.76, 0.2),
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
            indent: 68,
            endIndent: 68,
          ),
          leftBox,
        ],
      ),
    );
  }
}

