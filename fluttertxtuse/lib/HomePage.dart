



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget 
{ 
  const HomePage({Key? key}) : super(key: key);
   @override _HomePageState createState() => _HomePageState();
    } 
    class _HomePageState extends State<HomePage>
     { String? _data; 
     // This function is triggered when the user presses the floating button 
     Future <void> _loadData() async {
       final _loadedData = await rootBundle.loadString('./assets/data.txt');
        setState(() { _data = _loadedData; }); 
        } 
        @override Widget build(BuildContext context) { 
          return Scaffold
          ( appBar: AppBar( title: const Text('Kindacode.com'),
          ), 
          body: 
          Center( 
            child: 
            SizedBox( width: 300, child: 
            Text(_data ?? 'Nothing to show', 
            style: const TextStyle(fontSize: 24))
            )
            )
            ,
             floatingActionButton: 
             FloatingActionButton( 
              onPressed: _loadData, child: const Icon(Icons.add)), )
             ; } }