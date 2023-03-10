// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyAI16JCu_ByekTE8XTgH5Iq31ERl0BxMoQ',
    appId: '1:1093687833476:web:48abf528e7afef370d23d1',
    messagingSenderId: '1093687833476',
    projectId: 'ecommerceapp-ab05d',
    authDomain: 'ecommerceapp-ab05d.firebaseapp.com',
    storageBucket: 'ecommerceapp-ab05d.appspot.com',
    measurementId: 'G-XGSL6WR34N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCezHHzeUzOW8YaNyrC3okRyTXPTGDmf8E',
    appId: '1:1093687833476:android:202888e4b14376350d23d1',
    messagingSenderId: '1093687833476',
    projectId: 'ecommerceapp-ab05d',
    storageBucket: 'ecommerceapp-ab05d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBslbr5N_m9I7et-eKsMlEmikVhgdYwhtM',
    appId: '1:1093687833476:ios:5282abcf480e629f0d23d1',
    messagingSenderId: '1093687833476',
    projectId: 'ecommerceapp-ab05d',
    storageBucket: 'ecommerceapp-ab05d.appspot.com',
    iosClientId: '1093687833476-g5jt7fp24rs0h5cps4n4a66gpfj0c3i1.apps.googleusercontent.com',
    iosBundleId: 'com.example.project7',
  );
}
