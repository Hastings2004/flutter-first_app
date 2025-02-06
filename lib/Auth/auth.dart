import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/Auth/login.dart';
import 'package:first_app/Users/home.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return Home();
          }else{
            return LoginScreen();
          }
        }
      )
    );
  }
}