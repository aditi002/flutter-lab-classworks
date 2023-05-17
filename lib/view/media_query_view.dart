import 'package:flutter/material.dart';
import 'package:flutter_lab/common/show_my_message.dart';

class MediaQuery_view extends StatefulWidget {
  const MediaQuery_view({super.key});

  @override
  State<MediaQuery_view> createState() => _MediaQuery_viewState();
}

class _MediaQuery_viewState extends State<MediaQuery_view> {
  @override
  Widget build(BuildContext context) {
    double height = 0;
    double width = 0;
   
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Arithmetic'),
      //   centerTitle: true,
      //   elevation: 0,
      // ),
      body: Center(
        child: Column(children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              height: 600,
              width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                   showMySnackBar(context, 'helloo');
              },
              child: const Text('CLICK ME'),
            ),
            ),
          ),
          Expanded(
            // fit: FlexFit.loose,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 228, 94, 10),
              ),
              height: 200,
              width: double.infinity,
              child: ElevatedButton(
              onPressed: () {
                  showMySnackBar(context,'hello');
              },
              child: const Text('CLICK ME'),
            ),
              
            ),
          ),

        ]),
      ),
    );
  }

    
}
