import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final user  = FirebaseAuth.instance.currentUser!;

 void logout(){
   FirebaseAuth.instance.signOut();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: logout, 
            icon: Icon(Icons.logout)
            )
        ],
      ),
      body: Center(
        child: Text(
          "Welcome ${user.email!}",
           style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}