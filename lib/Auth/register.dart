import 'package:first_app/components/MyButton.dart';
import 'package:first_app/components/MyTextfield.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
   Register({super.key});

   final emailController = TextEditingController();

   final passwordController = TextEditingController();

    void signUpUser(){

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Column(
                    children: [
                        const SizedBox(height: 20),
                        Text(
                            "Create Acccount",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                        ),
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

                        Mytextfield(
                            controller: passwordController ,
                            obscureText: true,
                            hintText: "Confirm password",
                        ),
                    
                        const SizedBox(height: 20),
                        
                        Mybutton(onTap: signUpUser)
                    ],
                ),
            )
        ),
    );
  }
}