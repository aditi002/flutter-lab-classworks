import 'package:flutter/material.dart';
import 'package:flutter_lab/common/show_my_message.dart';

import '../model/arithmetic.dart';


class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  int result = 0;

  @override
  void initState() {
    firstController.text = '67';
    secondController.text = '89';
    super.initState();
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }
  late Arithmetic arithmetic; 

  void add(){
    arithmetic = Arithmetic();
    setState((){
       result = arithmetic.add(
        int.parse(firstController.text),
        int.parse(secondController.text),
      );
    });
    Navigator.pushNamed(
    context,
    'outputRoute',
    arguments: result
  );
  }
  void sub(){
    arithmetic = Arithmetic();
    setState((){
      result = arithmetic.sub(int.parse(firstController.text),
        int.parse(secondController.text),);
    });
  }
  final mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: mykey,
            child: Column(
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter first no',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                     if(value!.isEmpty){
                      return 'Please enter first number';
                     }
                    return null;
                     
          
                  }
                   
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: secondController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter second no',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                     if(value!.isEmpty){
                      return 'Please enter second number';
                     }
                    return null;
                     
          
                  }
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                   
                      if(mykey.currentState!.validate()){
                        sub();
                        showMySnackBar(context, "ADDed");
                      }
                    },
                    child: const Text('ADD'),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                    
                      
                     if(mykey.currentState!.validate()){
                        add();
                        showMySnackBar(context, "subbed");
                      }
                    },
                    child: const Text('SUB'),
                  ),
                ),
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}