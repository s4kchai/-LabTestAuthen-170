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
        return macos;
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
    apiKey: 'AIzaSyAN5QqP7tkJ2OwHjaRUrXXCA6ziGvtk04Y',
    appId: '1:648041623164:web:5694acff67d28da61fe3f9',
    messagingSenderId: '648041623164',
    projectId: 'fir-test-170',
    authDomain: 'fir-test-170.firebaseapp.com',
    storageBucket: 'fir-test-170.appspot.com',
    measurementId: 'G-XE5XEXNG1F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlaqdMFOO7EuNIbPlX63s-yVZ5zkQb0Eg',
    appId: '1:648041623164:android:ce953e0fb82bcd981fe3f9',
    messagingSenderId: '648041623164',
    projectId: 'fir-test-170',
    storageBucket: 'fir-test-170.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqq74GsqA_rJKSq_b-yNkVjgIdVjAD1Q0',
    appId: '1:648041623164:ios:d5d33a12328c989b1fe3f9',
    messagingSenderId: '648041623164',
    projectId: 'fir-test-170',
    storageBucket: 'fir-test-170.appspot.com',
    iosClientId: '648041623164-r2fflvikdn4i55nk8ngdi2h7itsuoljo.apps.googleusercontent.com',
    iosBundleId: 'com.example.authentest170',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqq74GsqA_rJKSq_b-yNkVjgIdVjAD1Q0',
    appId: '1:648041623164:ios:d5d33a12328c989b1fe3f9',
    messagingSenderId: '648041623164',
    projectId: 'fir-test-170',
    storageBucket: 'fir-test-170.appspot.com',
    iosClientId: '648041623164-r2fflvikdn4i55nk8ngdi2h7itsuoljo.apps.googleusercontent.com',
    iosBundleId: 'com.example.authentest170',
  );
}
