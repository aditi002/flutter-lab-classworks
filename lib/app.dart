import 'package:flutter/material.dart';
import 'package:flutter_lab/view/area_view.dart';
import 'package:flutter_lab/view/arithmetic_view.dart';
import 'package:flutter_lab/view/card_view.dart';
import 'package:flutter_lab/view/column_view.dart';
import 'package:flutter_lab/view/container_view.dart';
import 'package:flutter_lab/view/grid_view.dart';
import 'package:flutter_lab/view/loadimage_view.dart';
import 'package:flutter_lab/view/media_query_view.dart';
import 'package:flutter_lab/view/name_view.dart';
import 'package:flutter_lab/view/number_view.dart';
import 'package:flutter_lab/view/output_view.dart';
import 'package:flutter_lab/view/picture_view.dart';
import 'package:flutter_lab/view/row_Column_view.dart';
import 'package:flutter_lab/view/ui_view.dart';
import 'package:flutter_lab/view/uidetails_view.dart';

import 'view/dashboard.dart';
import 'view/richText_view.dart';


class App extends StatelessWidget {
   const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=> const Dashboard(),
        '/arithmeticRoute':(context)=> const ArithmeticView(),
        //'/siRoute': (context) =>  SiView(),
        '/areaRoute': (context) => const AreaView(),
        '/nameRoute':(context) => const NameView(),
        '/richtextRoute':(context) => const RichText_view(),
        '/columnRoute':(context) => const Column_view(),
        '/numberRoute' : (context) => const Number_view(),
        '/outputRoute' : (context) => const OutputView(),
        '/containerRoute': (context) => const ContainerView(),
        '/loadimageRoute': (context) => const loadImageView(),
        '/uiRoute':(context) => const ui_view(),
        '/detailRoute':(context) => const Detail_view(),
        '/mediaqueryRoute': (context) => const MediaQuery_view(),
        '/rowcolumnRoute':(context) => const RowColumn_view(),
        '/pictureRoute':(context) => const Picture_view(),
        '/cardviewRoute' : (context) => const card_view(),
        '/gridviewRoute' :  (context) => const grid_view(),
        
      }
    );
  }
}