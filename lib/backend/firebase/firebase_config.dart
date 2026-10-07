import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCNETVPHEPdpvW6I7tT3RJC9Jp-GbLZgHc",
            authDomain: "aula-wjgq8h.firebaseapp.com",
            projectId: "aula-wjgq8h",
            storageBucket: "aula-wjgq8h.firebasestorage.app",
            messagingSenderId: "16948188416",
            appId: "1:16948188416:web:93df8151ca5007febccfe5"));
  } else {
    await Firebase.initializeApp();
  }
}
