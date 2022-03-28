import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*
READ HERE:
I have left comments on the Universal Color theme and Fonts, feel free to edit them with approval of the rest of the theme
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseAuth.instance
  .userChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: GoogleFonts.firaSansTextTheme(), colorScheme: appLook),
        home: MainScreen());

    throw UnimplementedError();
  }
}
