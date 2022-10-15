import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_sample/Screens/login_page.dart';
import 'package:firebase_sample/Screens/sign_up.dart';
// import 'package:firebase_sample/Screens/login_page.dart';
// import 'package:firebase_sample/Screens/sign_up.dart';
import 'package:firebase_sample/Screens/user_page.dart';
// import 'package:firebase_sample/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const UserPage();
            } else {
              return LoginPage();
            }
          }),
    );
  }
}
