import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneratedOrderPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(218, 226, 230, 1.0),
      child: Column(
        children: <Widget> [
          Align(
              alignment: Alignment(-0.95, -0.8),
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
          Align(
            alignment: Alignment(-0.85, -0.85),
            child: Text(
              'Express checkout for customers saving them the time it would take to create an account.',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'FiraSans',
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),

    );
  }
}

