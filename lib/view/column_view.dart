import 'package:flutter/material.dart';

class Column_view extends StatelessWidget {
  const Column_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Column'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Icon(
                Icons.star,
                size: 50,
                color: Colors.red,
              ),
              Icon(
                Icons.star,
                size: 50,
                color: Colors.green,
              ),
              Spacer(),
              Icon(
                Icons.star,
                size: 50,
                color: Colors.yellow,
              ),
            ],  
        
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                size: 50,
                color: Colors.red,
              ),
              Icon(
                Icons.star,
                size: 50,
                color: Colors.green,
              ),
              
              Icon(
                Icons.star,
                size: 50,
                color: Colors.yellow,
              ) ,
              Spacer(),
              Icon(
                Icons.star,
                size: 50,
                color: Colors.red,
              ),
            ],
          ),
        ],  
    ),  
    );
    
  }
}