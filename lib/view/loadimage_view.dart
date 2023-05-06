import 'package:flutter/material.dart';

class loadImageView extends StatefulWidget {
  const loadImageView({super.key});

  @override
  State<loadImageView> createState() => _loadImageViewState();
}

class _loadImageViewState extends State<loadImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoadImage'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          
           
        children: const [
          // for(int i =0; i< 100; i++) ...{
          //   if(i%2 ==0) Text(i.toString()),
          // },
           CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/images/nepal.jpg')
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage( 'https://www.shutterstock.com/image-photo/surreal-image-african-elephant-wearing-260nw-1365289022.jpg',
           ),
          )
         
          ],
        ),
      ),
      
    );    
  }
}