import 'package:firebase_formAuth/screens/signin_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

//init firebase
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp(
        options: DefaultFirebaseOptions.android, // if you're using windows emulator
        //options: DefaultFirebaseOptions.ios, // if you're using windows emulator
        //options: DefaultFirebaseOptions.web, // for web
      );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}
