import 'package:flutter/material.dart';

import 'com/uav/flutter/components/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ezee Office',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: SplashScreen(),
      // routes: routes,
      // We use routeName so that we dont need to remember the name
      // initialRoute: UavRoutes.Login,
      initialRoute: UavRoutes.Splash_Screen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
