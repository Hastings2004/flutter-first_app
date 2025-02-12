import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final Function()? onTap;
  //final String text;
  //final TextStyle? style;

  const Mybutton({
    super.key,
    required this.onTap,
    //required this.text,
    //required this.style
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            "Login"
            ,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
        ),
      ),
    );
  }
}