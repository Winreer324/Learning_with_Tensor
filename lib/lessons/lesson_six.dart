import 'package:flutter/material.dart';

class LessonSix extends StatefulWidget {
  @override
  _LessonSixState createState() => _LessonSixState();
}

class _LessonSixState extends State<LessonSix> with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    );
    
    _animation = Tween(begin: 0.0, end: 500.0).animate(_animationController);
    _animation.addStatusListener((status){
      if (status == AnimationStatus.completed) {
        _animationController.reverse(); // туда
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward(); // сюда
      }
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation'),),
      body: LogoAnimation(animation: _animation,)
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class LogoAnimation extends AnimatedWidget {
  LogoAnimation({Key key, Animation animation}) : super(key: key, listenable: animation);


  @override
  Widget build(BuildContext context) {
    Animation animation = listenable;

    return Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          child: FlutterLogo(),
        )
    );
  }
}

