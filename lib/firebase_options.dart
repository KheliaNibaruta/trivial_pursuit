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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJ5u9r9KozXZZMtVpyPYlBVkAlOb2kvtE',
    appId: '1:466221606963:android:33614b416c6bc87ff7db46',
    messagingSenderId: '466221606963',
    projectId: 'trivial-pursuit-m2-cyber',
    storageBucket: 'trivial-pursuit-m2-cyber.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0XleGiy0gNGk5db7mWcijpUlU4BsHJyA',
    appId: '1:466221606963:ios:ad7e228ed006d1a4f7db46',
    messagingSenderId: '466221606963',
    projectId: 'trivial-pursuit-m2-cyber',
    storageBucket: 'trivial-pursuit-m2-cyber.appspot.com',
    iosClientId: '466221606963-ggato5mdvld8f23tahsugcikarnf7njm.apps.googleusercontent.com',
    iosBundleId: 'com.trivialpursut.trivialPursuit',
  );
}