import 'package:flutter/material.dart';


class RichText_view extends StatelessWidget {
  const RichText_view({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: RichText(
        text: const TextSpan(
            text: 'My',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text:' name is Aditi.',
                style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 71, 38, 38),
            ),
              ),
            ]
          ),
      ),  
    );
  }
}
// Container(
//           color: Colors.blueGrey,
//           width: double.infinity,
//), 
          