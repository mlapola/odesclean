import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyALOgsJhS9uaCOpvyXbQTaXKBAQtOSlUWw",
            authDomain: "odesclean-database.firebaseapp.com",
            projectId: "odesclean-database",
            storageBucket: "odesclean-database.firebasestorage.app",
            messagingSenderId: "745911923903",
            appId: "1:745911923903:web:6156c4d69d5511adb3020a"));
  } else {
    await Firebase.initializeApp();
  }
}
