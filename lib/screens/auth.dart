import 'package:appbar_project/bottom_appbar.dart';
import 'package:appbar_project/pages/home_page.dart';
import 'package:appbar_project/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const BotoomAppBar();
          } else {
            return const Login();
          }
        },
      ),
    );
  }
}
