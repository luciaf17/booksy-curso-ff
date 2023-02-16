import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAYxEIVlCtBIctihas7AD2mlgIqwMemi90",
            authDomain: "booksy-curso-cdef3.firebaseapp.com",
            projectId: "booksy-curso-cdef3",
            storageBucket: "booksy-curso-cdef3.appspot.com",
            messagingSenderId: "415119455752",
            appId: "1:415119455752:web:b942cb9b7eddbb5d0c43bd"));
  } else {
    await Firebase.initializeApp();
  }
}
