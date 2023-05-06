import 'package:flutter/material.dart';

class ui_view extends StatefulWidget {
  const ui_view({super.key});

  @override
  State<ui_view> createState() => _ui_viewState();
}

class _ui_viewState extends State<ui_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student details'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "first name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please provide first name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "last name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please provide last name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "age",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please provide age";
                    }
                    return null;
                  },
                ),
                const Text(
                  'Select Gender',
                  textAlign: TextAlign.left,
                ),
                
              ]
              ),
          ), ),
      )
    );
  }
}