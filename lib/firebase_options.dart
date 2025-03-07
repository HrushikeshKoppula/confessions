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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyALFQj92wxXRWETECyPiRMDCdm1GHwEMcc',
    appId: '1:396689816367:web:32975c746d3add57a33fda',
    messagingSenderId: '396689816367',
    projectId: 'confessions-361ef',
    authDomain: 'confessions-361ef.firebaseapp.com',
    storageBucket: 'confessions-361ef.appspot.com',
    measurementId: 'G-6V9VPRVVYR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6bkkoOghWMwPNrAHCd7wtRQ32ia6MqNY',
    appId: '1:396689816367:android:b4adc9fa75282d8aa33fda',
    messagingSenderId: '396689816367',
    projectId: 'confessions-361ef',
    storageBucket: 'confessions-361ef.appspot.com',
  );
}
