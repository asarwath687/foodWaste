import 'package:flutter/material.dart';
import 'order.dart';
import 'editmenu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Food Waste App DSC",
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Use These to Navigate to pages that you have chosen to work on, we will integrate them as we go"),
            ElevatedButton(onPressed: () {}, child: Text("Sign Up Page")),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Search Page")),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>GeneratedOrderPageWidget())
              );
            }, child: Text("Order Page")),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>editmenu())
              );
            }, child: Text("Update Menu Page")),
          ],
        ),
      );
  }
}
