// import 'package:firebase_sample/Screens/login_page.dart';
import 'package:firebase_sample/Screens/sign_up.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(
          'Fire Base'.toUpperCase(),
        ),
        centerTitle: true,
      ),
      body: SignUp(),
    );
  }
}
