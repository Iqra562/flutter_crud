// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBUiOWe0Lxk0_Th_9HlltKX9KuvvYK5ZEs',
    appId: '1:446780672897:web:304a592ed52a90ecfdb680',
    messagingSenderId: '446780672897',
    projectId: 'fir-flutter-c9835',
    authDomain: 'fir-flutter-c9835-6ce35.firebaseapp.com',
    storageBucket: 'fir-flutter-c9835.appspot.com',
    measurementId: 'G-R8Y416L3PJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBypZKTFpsBhcwTJ4_yVpekuOzpD1ktET4',
    appId: '1:446780672897:android:57e879c602e78608fdb680',
    messagingSenderId: '446780672897',
    projectId: 'fir-flutter-c9835',
    storageBucket: 'fir-flutter-c9835.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCyaPt-ciUTczlkWHNYXBF0hjRW5t66kTI',
    appId: '1:446780672897:ios:daf71cac63d9a43dfdb680',
    messagingSenderId: '446780672897',
    projectId: 'fir-flutter-c9835',
    storageBucket: 'fir-flutter-c9835.appspot.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCyaPt-ciUTczlkWHNYXBF0hjRW5t66kTI',
    appId: '1:446780672897:ios:daf71cac63d9a43dfdb680',
    messagingSenderId: '446780672897',
    projectId: 'fir-flutter-c9835',
    storageBucket: 'fir-flutter-c9835.appspot.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBUiOWe0Lxk0_Th_9HlltKX9KuvvYK5ZEs',
    appId: '1:446780672897:web:155ef1f19a0ab870fdb680',
    messagingSenderId: '446780672897',
    projectId: 'fir-flutter-c9835',
    authDomain: 'fir-flutter-c9835-6ce35.firebaseapp.com',
    storageBucket: 'fir-flutter-c9835.appspot.com',
    measurementId: 'G-1GEVXFGVZD',
  );
}
