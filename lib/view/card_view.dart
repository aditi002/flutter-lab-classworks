import 'package:flutter/material.dart';

class card_view extends StatelessWidget {
  const card_view({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index){
          return displayCard("vhgh");
        },
      )
    );
  }
  Widget displayCard(String title){
    return GestureDetector(
      onTap:(){
        
        print("hello");
      }, 
          
    child:SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 247, 14, 87),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text(
            "I'm inside a card",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
        ),
      )
    ),
    );
  }
}