import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBHWkpjcQFPw9U8AEpQ9znnKq2Geww7hGA",
            authDomain: "the-purple-piggy-bank.firebaseapp.com",
            projectId: "the-purple-piggy-bank",
            storageBucket: "the-purple-piggy-bank.appspot.com",
            messagingSenderId: "411610482449",
            appId: "1:411610482449:web:4001310386d4ec9990aeb0"));
  } else {
    await Firebase.initializeApp();
  }
}
