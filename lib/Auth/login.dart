import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/components/MyButton.dart';
import 'package:first_app/components/MyTextfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void loginUser() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey ,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 130),
              Text("Login Page", style:  TextStyle(
                color: Colors.grey[700],
                fontSize: 16
              ),),

              const SizedBox(height: 20),
              Mytextfield(
                controller: emailController ,
                obscureText: false,
                hintText: "Email",
              ),
              const SizedBox(height: 20),
              Mytextfield(
                controller: passwordController ,
                obscureText: true,
                hintText: "Password",
              ),
              const SizedBox(height: 20),

               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget password",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 17, 90, 20),
                        fontSize: 16
                      ),
                    ),  
                  ],
                ),
                ),
                const SizedBox(height: 20),
                Mybutton(onTap: loginUser)
            ],
      ),
        )
      ),
    );
  }
}