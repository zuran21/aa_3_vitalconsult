import 'package:flutter/material.dart';
import 'package:healthcare/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAik7szvbM1HYLD_u_a8vslbg7HXa9HHHM", // Your apiKey
      appId: "1:690740965720:android:69fdd8131c85c168f0752d", // Your appId
      messagingSenderId: "", // Your messagingSenderId
      projectId: "app-test-vitalconsult",
/*       databaseURL: "https://cineone-tm-default-rtdb.firebaseio.com/" */
    ),
  ); // Your projectId);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
