import 'package:flutter/material.dart';


class Detail_view extends StatefulWidget {
  const Detail_view({super.key});

  @override
  State<Detail_view> createState() => _Detail_viewState();
}

class _Detail_viewState extends State<Detail_view> {

  List<String> data = [
    "Kiran Rana",
    "Kiran Rana"
    "Kiran Rana"
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        centerTitle: true,
        elevation: 0,
        

      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
         //   color :Colors.black,
            child: Padding( 
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                title: Text(data[index]),
                trailing: SizedBox(
                  width: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: IconButton(
                          onPressed: (){},icon:const Icon(Icons.edit))),
                      Expanded(
                        child: IconButton(
                          onPressed: (){},icon:const Icon(Icons.delete))),
                    ],
                  ),
                ),
              ),
            ),
          );         
        },
      ) ,

    );
  }
}