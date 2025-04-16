import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBV6NvNyfbtrNf02alJ284GdmrBF5oC1MI",
            authDomain: "adicionartarefa-6b54a.firebaseapp.com",
            projectId: "adicionartarefa-6b54a",
            storageBucket: "adicionartarefa-6b54a.appspot.com",
            messagingSenderId: "120962320678",
            appId: "1:120962320678:web:311fbe18d82c6330ff99e7"));
  } else {
    await Firebase.initializeApp();
  }
}
