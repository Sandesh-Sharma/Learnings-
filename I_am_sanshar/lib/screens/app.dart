import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  @override
   build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text('I am Sanshar')
        ),
        
        body: Center(
          child: Image(
            image: AssetImage('models/sanshar.jpg') ,)
         ),
         )
         );
      
    
  }
}