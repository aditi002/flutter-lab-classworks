import 'package:flutter/material.dart';
import 'package:flutter_lab/model/area_of_circle.dart';
import 'package:flutter_lab/model/arithmetic.dart';
import 'package:flutter_lab/view/area_view.dart';
import 'package:flutter_lab/view/arithmetic_view.dart';
import 'package:flutter_lab/view/name_view.dart';
import 'package:flutter_lab/view/si_view.dart';


import 'view/dashboard.dart';


class App extends StatelessWidget {
   App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=> Dashboard(),
        '/arithmeticRoute':(context)=> ArithmeticView(),
        '/siRoute': (context) =>  SiView(),
        '/areaRoute': (context) => AreaView(),
        '/nameRoute':(context) => NameView(),
        
      },
    );
  }
}