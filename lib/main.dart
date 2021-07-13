import 'package:flutter/material.dart';
import 'package:task_2_gsg/ui/model/AppRouter.dart';
import 'package:task_2_gsg/ui/screen/error_screen.dart';
import 'package:task_2_gsg/ui/screen/home_screen.dart';
import 'package:task_2_gsg/ui/screen/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppRouter.router.navKey,
      routes: {
        // 'home': (context)=> HomeScreen(),
        // 'scound':(context)=>ScoundScreen(),
      },
      onGenerateRoute: (RouteSettings routeSettings) {
        String name = routeSettings.name;
        var arguments = routeSettings.arguments;
        switch (name) {
          case ('home'):
            return MaterialPageRoute(builder: (context) {
              return HomeScreen();
            });
          case ('register'):
            return MaterialPageRoute(builder: (context) {
              return RegisterScreen();
            });

          default:
            return MaterialPageRoute(builder: (context) {
              return ErrorScreen();
            });
        }
      },
      onUnknownRoute: (RouteSettings route) {
        return MaterialPageRoute(builder: (context) {
          return ErrorScreen();
        });
      },
      //   if (name == 'home') {
      //     return MaterialPageRoute(builder: (context) {
      //       return HomeScreen();
      //     });
      //   } else if (name == 'scound') {
      //     return MaterialPageRoute(builder: (context) {
      //       return ScoundScreen();
      //     });
      //   } else if (name == 'register') {
      //     return MaterialPageRoute(builder: (context) {
      //       return RegisterScreen();
      //     });
      //   } else {
      //     return MaterialPageRoute(builder: (context) {
      //       return ErrorScreen();
      //     });
      //   }
      // },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
