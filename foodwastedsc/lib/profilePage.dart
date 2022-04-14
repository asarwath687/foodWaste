import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:foodwastedsc/editmenu.dart';
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'search.dart';
import 'order.dart';

class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topButtons = new Expanded(
      child: new Row(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 70),
                primary: Colors.white,
                onPrimary: Colors.black,
                textStyle: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'FiraSans',
                ),
              ),
              child: Text("Return Home"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchMap()));
              },
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 70),
                primary: Colors.white,
                onPrimary: Colors.black,
                textStyle: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'FiraSans',
                ),
              ),
              child: Text("Edit Profile"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => editmenu()));
              },
            ),
          ),
        ],
      ),
    );

    final information = new Expanded(
      child: new Column(
        children: [
          Container(
            alignment: Alignment(-0.7, 0.2),
            child: new Text(
              'Poke House',
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
            alignment: Alignment(-0.7, 0.2),
            child: new Text(
              '1543 Pacific Ave',
              style: new TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'FiraSans',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            alignment: Alignment(-0.67, 0.2),
            child: new Text(
              'Hours: 11:00 AM - 9:30 PM',
              style: new TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'FiraSans',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            alignment: Alignment(-0.7, 0.2),
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 70),
                primary: Colors.white,
                onPrimary: Colors.black,
                textStyle: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'FiraSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text("Order"),
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

    final pictureInfo = new Expanded(
      child: new Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(87, 10, 10, 10),
            child: Image.network(
              'https://static1.squarespace.com/static/55d61778e4b05d580d9a894f/t/55d62475e4b0edf9e2e82285/1648490861560/',
              alignment: Alignment.topLeft,
              width: 200,
              height: 200,
            ),
          ),
          information,
        ],
      ),
    );

    final menu = new Expanded(
      child: new Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 0, 10),
            alignment: Alignment(-0.8, 0.2),
            child: Text(
              'Accomodations Available: 15',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'FiraSans',
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 0, 10),
            alignment: Alignment(-0.81, 0.2),
            child: Text(
              'Item:                                     Quantity:',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'FiraSans',
                fontSize: 15.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
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
    );

    final imageGrid1 = new Expanded(
      child: new Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Image.network(
              'https://images.squarespace-cdn.com/content/v1/55d61778e4b05d580d9a894f/1621375106959-AR7AZ4Z3MP4ON3KN7ENO/Miso+Salmon+Bowl',
              alignment: Alignment(0.1, 0.2),
              width: 150,
              height: 150,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Image.network(
              'https://s3-media0.fl.yelpcdn.com/bphoto/vKm2mTug3uDFbagsynZ-AQ/258s.jpg',
              alignment: Alignment(0.1, 0.2),
              width: 150,
              height: 150,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Image.network(
              'https://media-cdn.tripadvisor.com/media/photo-s/18/47/a4/ff/summer-bowl-goals.jpg',
              alignment: Alignment(0.1, 0.2),
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );

    final imageGrid2 = new Expanded(
      child: new Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Image.network(
              'https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/ec/c9/e0/photo0jpg.jpg',
              alignment: Alignment(0.1, 0.2),
              width: 150,
              height: 150,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Image.network(
              'https://images.squarespace-cdn.com/content/v1/55d61778e4b05d580d9a894f/1621375487720-QSATG53YDNH2J8H2TT4Z/Tuna+Lover+Bowl',
              alignment: Alignment(0.1, 0.2),
              width: 150,
              height: 150,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Image.network(
              'https://images.squarespace-cdn.com/content/v1/55d61778e4b05d580d9a894f/1626375281028-K39QQ1H03L83P1QCDKUL/image-asset.jpeg',
              alignment: Alignment(0.1, 0.2),
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );

    final fullGrid = new Expanded(
      child: new Row(
        children: [
          imageGrid1,
          imageGrid2,
        ],
      ),
    );

    final bottomSection = new Expanded(
      child: new Row(
        children: [
          fullGrid,
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Divider(
              color: Colors.grey,
              indent: 200,
              endIndent: 200,
            ),
          ),
          menu,
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(218, 226, 230, 1.0),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 30),
            child: topButtons,
          ),
          Container(
            alignment: Alignment(-0.8, -0.8),
            child: pictureInfo,
          ),
          Divider(
            color: Colors.grey,
            indent: 0,
            endIndent: 0,
          ),
          bottomSection,
        ],
      ),
    );
  }
}
