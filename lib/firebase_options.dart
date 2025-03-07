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
    apiKey: 'AIzaSyCAvdW7aZ9bYbdCRsCQEFgzBRbLL8g1CZM',
    appId: '1:860417064616:web:3ee099ecb448927e2e4c9d',
    messagingSenderId: '860417064616',
    projectId: 'trying-c81d5',
    authDomain: 'trying-c81d5.firebaseapp.com',
    storageBucket: 'trying-c81d5.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyABk9vP_WLUuCEEZ8zbPcaWMDLfMxQVDdE',
    appId: '1:860417064616:android:5ac34487b3e654592e4c9d',
    messagingSenderId: '860417064616',
    projectId: 'trying-c81d5',
    storageBucket: 'trying-c81d5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEPaD766i08J0FNQiKkjegeKg4xYp_gKc',
    appId: '1:860417064616:ios:4a37f6726e37e61d2e4c9d',
    messagingSenderId: '860417064616',
    projectId: 'trying-c81d5',
    storageBucket: 'trying-c81d5.firebasestorage.app',
    iosBundleId: 'com.example.firstApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEPaD766i08J0FNQiKkjegeKg4xYp_gKc',
    appId: '1:860417064616:ios:4a37f6726e37e61d2e4c9d',
    messagingSenderId: '860417064616',
    projectId: 'trying-c81d5',
    storageBucket: 'trying-c81d5.firebasestorage.app',
    iosBundleId: 'com.example.firstApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCAvdW7aZ9bYbdCRsCQEFgzBRbLL8g1CZM',
    appId: '1:860417064616:web:48cc5cd1a64c77ef2e4c9d',
    messagingSenderId: '860417064616',
    projectId: 'trying-c81d5',
    authDomain: 'trying-c81d5.firebaseapp.com',
    storageBucket: 'trying-c81d5.firebasestorage.app',
  );

}