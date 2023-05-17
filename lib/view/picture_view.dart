import 'package:flutter/material.dart';

class Picture_view extends StatefulWidget {
  const Picture_view({super.key});

  @override
  State<Picture_view> createState() => _Picture_viewState();
}

class _Picture_viewState extends State<Picture_view> {
  @override
  
  Widget build(BuildContext context) {

    double height = 0;
    double width = 0;
   
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Cards list'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children:  [
              const SizedBox(height: 10),
              Container (
        
               height: 400,
               decoration: BoxDecoration(
               border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 5,
                  style: BorderStyle.solid
                ),  borderRadius: BorderRadius.circular(20),
                 color: const Color.fromARGB(255, 255, 255, 255),              
               ),   
               child: Column(
                 children: [
                  Align(
                 //   alignment: const Alignment(-0.5, -0.5),
                    child: Image.asset("assets/images/sparrow.jpg", height: 300, width: 500),
                  ),
                  const SizedBox(height: 10,),
                  const Text('SPARROW',
                  style: TextStyle(
                   fontSize: 40,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ],
               ),
              ),
        
              //next image
              const SizedBox(height: 10),
              Container (
               height: 400,
               decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 5,
                  style: BorderStyle.solid
                ),  borderRadius: BorderRadius.circular(20),
                 color: const Color.fromARGB(255, 255, 255, 255),              
                ),   
              child: Column(
                children: [
                  Align(
                    alignment: const Alignment(0, -0.5),
                    child: Image.asset("assets/images/lion.jpg", height: 300, width: 500),
                  ),
                  const SizedBox(height: 10,),
                  const Text('LION',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              ),


              //next image
              const SizedBox(height: 8),
              Container (
               height: 400,
               decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 5,
                  style: BorderStyle.solid
                ),  borderRadius: BorderRadius.circular(20),
                 color: const Color.fromARGB(255, 255, 255, 255),              
                ),   
              child: Column(
                children: [
                  Align(
                    alignment: const Alignment(0, -0.5),
                    child: Image.asset("assets/images/elephant.jpg", height: 300, width: 500),
                  ),
                  const SizedBox(height: 10,),
                  const Text('ELEPHANT',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              ),
            ],
          
          ),
        ),
      ),
      
    );
  }
}