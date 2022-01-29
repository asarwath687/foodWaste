import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';

/*
READ HERE:
I have left comments on the Universal Color theme and Fonts, feel free to edit them with approval of the rest of the theme
*/

void main(List<String> args) {
  runApp(homePage());
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appLook = ColorScheme(
        //Main Color Scheme
        primary: Colors.white,
        primaryVariant: Colors.grey.shade800,
        secondary: Colors.blue,
        secondaryVariant: Colors.blueAccent.shade400,
        surface: Colors.white70,
        background: Colors.white,
        error: Colors.white,
        onPrimary: Colors.black,
        onSecondary: Colors.white,
        onSurface: Colors.black,
        onBackground: Colors.black,
        onError: Colors.redAccent,
        brightness: Brightness.light);

    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.firaSansTextTheme(), colorScheme: appLook),
      home: Scaffold(
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
            ElevatedButton(onPressed: () {}, child: Text("Order Page")),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Update Menu Page")),
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }
}
