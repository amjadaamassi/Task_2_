import 'package:flutter/material.dart';
import 'package:task_2_gsg/ui/model/AppRouter.dart';
import 'package:task_2_gsg/ui/screen/scound_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: Row(
              children: [
                Text('Next'),
                Icon(Icons.arrow_forward),
              ],
            ),
            onPressed: () async {
              AppRouter.router.pushFunction(ScoundScreen());
            },
          ),
        ),
      ),
    );
  }
}
