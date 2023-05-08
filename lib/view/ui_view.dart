import 'package:flutter/material.dart';
enum Gendergroup{female,male}

class ui_view extends StatefulWidget {
  const ui_view({super.key});

  @override
  State<ui_view> createState() => _ui_viewState();
}

class _ui_viewState extends State<ui_view> {
  Gendergroup _gender = Gendergroup.female ;
  
  //for dropdown
String selectedCity = 'Kathmandu';
  final List<String> cities = [
    'Kathmandu',
    'Pokhara',
    'Bardiya',
    'Dhandagi',
    'Kailali',
    'Surkhet',
    'Butwal',
  ];

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                
                //radio button
                 Container(
                  alignment: Alignment.topLeft,
                  child: const Text("Select Gender:"),
                ),
                RadioListTile(
                  value: Gendergroup.female,
                    title: const Text("Female"),
                    groupValue: _gender,
                    onChanged: (value){
                      setState(() {
                          _gender = value!;
                       });
                    },
                ),

                RadioListTile<Gendergroup>(
                  value: Gendergroup.male,
                    title: const Text("Male"),
                    groupValue: _gender,
                    onChanged: (value){
                      setState(() {
                        _gender = value!;
                       });
                    },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  maxLines: null,
                  minLines: 4,
                  decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please provide address";
                    }
                    return null;
                  },
                ),
                //dropdown
                              const SizedBox(height: 9),
              DropdownButtonFormField<String>(
                value: selectedCity,
                onChanged: (String? value){
                  setState(() {
                    selectedCity = value!;
                  });
                },
                items: cities
                    .map((city) => DropdownMenuItem(
                       value: city,
                       child: Text(city),
                    ))
                    .toList(),
                decoration: const InputDecoration(
                  labelText: 'Select your city',
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 119, 119, 119),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 119, 119, 119),
                    ),
                  ),
                ), 
              ),
              //buttons
              
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
              
              //Navigator.pushNamed(context, '/uiRoute');
              },
              child: const Text('Save Student'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
              
              Navigator.pushNamed(context, '/detailRoute');
              },
              child: const Text('Display Student'),
            ),
              
              ]
              ),
          ), ),
      )
    );
  }
}