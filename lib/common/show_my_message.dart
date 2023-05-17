 import 'package:flutter/material.dart';

showMySnackBar(
  BuildContext context, 
  String message,
  {
    Color color = Colors.green
  }){
      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Hello World"),
                      backgroundColor: Color.fromARGB(255, 215, 33, 61),
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
    }