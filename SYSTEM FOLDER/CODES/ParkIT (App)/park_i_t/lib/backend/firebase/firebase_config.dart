import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyARF4HLPX6nQdf2MilHnABuYQP0bY7SUwM",
            authDomain: "park-i-t-c4s9f4.firebaseapp.com",
            projectId: "park-i-t-c4s9f4",
            storageBucket: "park-i-t-c4s9f4.appspot.com",
            messagingSenderId: "398902759740",
            appId: "1:398902759740:web:241cf286117a7fa6ca4e39"));
  } else {
    await Firebase.initializeApp();
  }
}
