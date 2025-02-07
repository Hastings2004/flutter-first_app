import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/components/MyButton.dart';
import 'package:first_app/components/MyTextfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void loginUser() async{
    showDialog(
      context: context, 
      builder: (context){
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, 
        password: passwordController.text
      );

       Navigator.pop(context);
      }
       on FirebaseAuthException catch (e) {
         Navigator.pop(context);
        if(e.code == 'user-not-found'){
          wrongEmailMessage();
        }
        else if(e.code == 'wrong-password'){
          wrongPasswordMessage();
        }
    }

   
  }
   void wrongEmailMessage(){
    showDialog(
      context: context, 
      builder: (context){
        return const AlertDialog(
          title: Text(
            "Incorect Email"
          ),
        );
    },);
   }

   void wrongPasswordMessage(){
    showDialog(
      context: context, 
      builder: (context){
        return const AlertDialog(
          title: Text(
            "Incorect Email"
          ),
        );
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/img/logo.jpg",
                height: 200
              ),
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

                Mybutton(onTap: loginUser, text: "Login",),

                const SizedBox(height: 20),

                
            ],
      ),
        )
      ),
    );
  }
}