// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAVrYMK2tE223bZbDFeG_EcPZ5f0R_C1Hk',
    appId: '1:1044088017898:web:fa6e50cb1898ee6f595893',
    messagingSenderId: '1044088017898',
    projectId: 'foodwasteucsc',
    authDomain: 'foodwasteucsc.firebaseapp.com',
    databaseURL: 'https://foodwasteucsc-default-rtdb.firebaseio.com',
    storageBucket: 'foodwasteucsc.appspot.com',
    measurementId: 'G-C5E1GHSJ1F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9L78Bh8mOT5eHHUwH4GUA9yfRLelygos',
    appId: '1:1044088017898:android:be95d4bf503787b4595893',
    messagingSenderId: '1044088017898',
    projectId: 'foodwasteucsc',
    databaseURL: 'https://foodwasteucsc-default-rtdb.firebaseio.com',
    storageBucket: 'foodwasteucsc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpozWPvKNW8-V6U9ArkcBHrUqq3hTxPV0',
    appId: '1:1044088017898:ios:7f3f7abe411890d4595893',
    messagingSenderId: '1044088017898',
    projectId: 'foodwasteucsc',
    databaseURL: 'https://foodwasteucsc-default-rtdb.firebaseio.com',
    storageBucket: 'foodwasteucsc.appspot.com',
    iosClientId: '1044088017898-cpf2oplgcsn7ofhioe72klck8vff5ie5.apps.googleusercontent.com',
    iosBundleId: 'com.ucscfoowaste.app',
  );
}
