import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ezee_office/com/uav/flutter/activity/splash/splash_view.dart';


class UavRoutes {
  static const Splash_Screen = "/splash_screen";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {
      case UavRoutes.Splash_Screen:
        return MaterialPageRoute(builder: (_) => SplashView());
     default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
