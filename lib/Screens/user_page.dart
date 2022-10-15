import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: Center(
          child: ElevatedButton(
        child: Text(
          'LogOut',
        ),
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
      )),
    );
  }
}
