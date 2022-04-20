import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodwastedsc/profilePage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:html';

import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'editmenu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPageWidget extends StatelessWidget {
  @override
  bool _passgood = false;
  final _oop = TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  TextEditingController addController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();

  Widget build(BuildContext context) {
    MaterialBanner myBanner = new MaterialBanner(
        content: Text("Your Business has been Signed Up"),
        backgroundColor: Colors.blueAccent.shade100,
        actions: [
          TextButton(
              child: Text("Take me to Edit Order Page"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => editmenu()));
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              }),
        ]);
    MaterialBanner emailNope = new MaterialBanner(
        content: Text("Invalid Email - Already In Use"),
        backgroundColor: Colors.blueAccent.shade100,
        actions: [
          TextButton(child: Text(""), onPressed: () {}),
        ]);
    final centerBox = new Expanded(
      child: new Column(
        children: [
          Container(
            alignment: Alignment.center,
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
                    'Your Business Information',
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
                    'We\'re excited to have you on board, but first we need a bit more information:',
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
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Business Name: *",
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
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Business Phone Number: *",
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
                  width: 570.0,
                  child: new TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Preferred Email: *",
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
                    controller: addController,
                    keyboardType: TextInputType.streetAddress,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      labelText: "Business Address: *",
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
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password For Account *",
                      hintText: "Make sure this is strong!",
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
                Padding(padding: EdgeInsets.all(5)),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    minimumSize: Size(100, 50),
                    padding: EdgeInsets.all(10),
                  ),
                  onPressed: () async {
                    try {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passController.text,
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        ScaffoldMessenger.of(context)
                            .showMaterialBanner(emailNope);
                      }
                    } catch (e) {
                      print(e);
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profilePage()),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    final bottomSection = new Expanded(
      child: new Row(
        children: [centerBox],
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
                'Sign Your Business Up Today',
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
              'Want to join the Waste-Free revolution? Sign Up using the form below!',
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
        ],
      ),
    );
  }
}
