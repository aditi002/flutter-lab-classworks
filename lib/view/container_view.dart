import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 249, 234),
      body: SafeArea(
        child:Container(
          child: SizedBox(
            
            height: double.infinity,
            width: double.infinity,
           
            child: Center(
            child: Container(
              
              width: 200,
              height: 200,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.greenAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                  
                )
              ),
              child:const Text('Hello World'),
              
          
              ),
          )
          ),
        )
        
        ),
    );
  }
}