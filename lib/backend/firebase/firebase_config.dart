import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAJaocwgajidF7cjmeDLfcYF-jCoaMvdRA",
            authDomain: "multivendorapp-d01db.firebaseapp.com",
            projectId: "multivendorapp-d01db",
            storageBucket: "multivendorapp-d01db.appspot.com",
            messagingSenderId: "367105643388",
            appId: "1:367105643388:web:89ea164157b031a2d9caf9",
            measurementId: "G-5KP8WFV7R3"));
  } else {
    await Firebase.initializeApp();
  }
}
