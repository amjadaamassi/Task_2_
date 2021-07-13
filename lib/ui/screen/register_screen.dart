import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: ElevatedButton(
              child: Text('next'),

              onPressed: () async {
                var result = await Navigator.of(context).pushNamed('scound');
                print(result);
              },
            ),
        ),
      ),
    );
  }

}