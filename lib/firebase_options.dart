import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
class DefaultFireBaseOptions {
  static FirebaseOptions get currentPlatform {
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
      apiKey: 'AIzaSyBqvRuJ4MdjzvQqWUyo0xv9Gdr6KT_Fe7Y',
      appId: '1:1086982550751:android:e772fd764ca830ffa8256a',
      messagingSenderId: '1086982550751',
      projectId: 'summer-project-a4dab',
      storageBucket: 'summer-project-a4dab.appspot.com',
    );
  }
