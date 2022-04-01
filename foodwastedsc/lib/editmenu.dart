import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'order.dart';

class editmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void storeText(String text) {
      String _textString = '';
      text = _textString;
    }

    final rightBox = new Expanded(
      child: new Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: 530.0,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 25, 0),
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
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  alignment: Alignment(-0.8, 0.2),
                  child: new Text(
                    'Edit what item(s) your business has available today.',
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
                  alignment: Alignment(-0.77, 0.2),
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
                  indent: 42,
                  endIndent: 40,
                ),
                Container(
                  child: new SizedBox(
                    width: 15.0,
                  ),
                ),
                Container(
                  child: new Row(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.fromLTRB(43.0, 10.0, 0.0, 10.0),
                        width: 200.0,
                        child: new TextField(
                          onChanged: (text) {
                            storeText(text);
                          },
                          decoration: InputDecoration(
                            labelText: "Item: ",
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
                        padding:
                            const EdgeInsets.fromLTRB(39.0, 10.0, 0.0, 10.0),
                        width: 200.0,
                        child: new TextField(
                          decoration: InputDecoration(
                            labelText: "Quantity: ",
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
          ),
        ],
      ),
    );

    final leftBox = new Expanded(
      child: new Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 530.0,
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
                    'Profile Information',
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
                    'Enter details about your business here.',
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
                      labelText: "Profile Name: ",
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
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                  width: 570.0,
                  child: new TextField(
                    decoration: InputDecoration(
                      labelText: "Address: ",
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
                      labelText: "Hours of Operation: ",
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
                      labelText: "Phone Number: ",
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
                'Edit Profile',
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
            alignment: Alignment(-0.84, 0.2),
            child: Text(
              'Edit the menu customers will view on your profile and upload images here.',
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
            indent: 92,
            endIndent: 92,
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
              child: Text("Save"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GeneratedOrderPageWidget()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
