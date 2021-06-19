import 'package:flutter/material.dart';


class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin{
  late AnimationController animationController;


  @override
  void initState() {
    super.initState();
      animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 1),
    );

    animationController.
  }



  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }






  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: AnimatedBuilder(
        animation: animationController,

        child: new Container(
          height: 150.0,
          width: 150.0,
          child: new Image.asset('assets/images/ezeefile_icon_main.png'),
        ),
        builder: (BuildContext context, Widget? _widget) {
            return new Transform.rotate(
                angle: animationController.value * 6.3,
                child: _widget
            );
          },

      ),
    );;
  }
}

/*

class SplashView extends StatelessWidget {
  AnimationController animationController;




  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 7),
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
       body: Center(
         child: Image.asset(
           "assets/images/ezeefile_icon_main.png",
           width: 200,
           height: 200,
         ),
       )
    );
  }
}
*/
