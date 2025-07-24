// File: lib/firebase_options.dart

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCo058tp9xGBG7pV9p-czta1JqsBjo_YHw',
    appId: '1:1028508432668:android:1417bd1970f06ca435a2d9',
    messagingSenderId: '1028508432668',
    projectId: 'mindnestapp',
    storageBucket: 'mindnestapp.firebasestorage.app',
  );
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDKbwFSqs2Tm4TFYELehJmtSHajf-t1dDU',
    appId: '1:1028508432668:web:518d9955f6ecf90935a2d9',
    messagingSenderId: '1028508432668',
    projectId: 'mindnestapp',
    authDomain: 'mindnestapp.firebaseapp.com',
    storageBucket: 'mindnestapp.firebasestorage.app',
  );
}
