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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAfQmMCSZ8FjTGEZ5AODpCL4at7kponSDk',
    appId: '1:967390497489:web:6ddf3ecf73c9d38ee953f0',
    messagingSenderId: '967390497489',
    projectId: 'wattpad-clone-f3b4f',
    authDomain: 'wattpad-clone-f3b4f.firebaseapp.com',
    storageBucket: 'wattpad-clone-f3b4f.appspot.com',
    measurementId: 'G-S2WNJXC2E6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0tL6hljTzRC26V-X30nmOmgQZ20uLtaU',
    appId: '1:967390497489:android:5648b7cb8a12db71e953f0',
    messagingSenderId: '967390497489',
    projectId: 'wattpad-clone-f3b4f',
    storageBucket: 'wattpad-clone-f3b4f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgSr3-9nRp2Z7gPB9dONI0f4SrByskeeY',
    appId: '1:967390497489:ios:d8b3f32083c8046be953f0',
    messagingSenderId: '967390497489',
    projectId: 'wattpad-clone-f3b4f',
    storageBucket: 'wattpad-clone-f3b4f.appspot.com',
    androidClientId: '967390497489-3n62r8hovct04r8nsdlvvt719rh8j7j1.apps.googleusercontent.com',
    iosClientId: '967390497489-0aj59dgoebkonanmecgq3u1c1jgol7pk.apps.googleusercontent.com',
    iosBundleId: 'com.example.ebookApp',
  );
}
