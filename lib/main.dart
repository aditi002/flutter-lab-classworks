import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
          centerTitle: true,
          elevation: 0,
        ),  
        
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children:[
             SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter first no',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
        
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter second no',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
               Text(
                "Sum is : 0",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),),
            ]
          ),
        ),  
      ),
    ),
  );
}