import 'package:flutter/material.dart';
import './HomePage.dart';
import 'package:flutter/material.dart';
 import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';



void main() 
{ 
  runApp(const MyApp());
   } 
   class MyApp extends StatelessWidget { 
    const MyApp({Key? key})
     : super(key: key);
      @override Widget build(BuildContext context)
       { 
        return const MaterialApp( 
          debugShowCheckedModeBanner: false, title: 'Kindacode.com', home: HomePage(), ); 
        }
         }