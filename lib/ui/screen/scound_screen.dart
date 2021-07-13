import 'package:flutter/material.dart';

class ScoundScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: Text('Back'),
            onPressed: () async{
              Navigator.of(context).pop('go home screen');
            }
          ),
        ),
      ),
    );
  }

}