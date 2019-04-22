import 'package:flutter/material.dart';
import 'dart:math';

class LessonTen extends StatefulWidget {
  @override
  _LessonTenState createState() => _LessonTenState();
}

class _LessonTenState extends State<LessonTen> {
  final Random random = Random();
  Color color = Colors.amber;

  onTap() {
    setState(() {
      color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Random Squares'),),
        body: ColorState(
          onTap: onTap,
          color: color,
          child: BoxTree(),
        )
    );
  }
}

class ColorState extends InheritedWidget {
  final Color color;
  final Function onTap;

  ColorState({
    Key key,
    this.color,
    this.onTap, 
    Widget child
  }) :super(key: key, child: child);

  @override
  bool updateShouldNotify(ColorState oldWidget) {
    return color != oldWidget.color;
  }

  static ColorState of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ColorState);
  }
}

class BoxTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Box(),
            Box(),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorState = ColorState.of(context);
    return GestureDetector(
      onTap: colorState.onTap,
      onHorizontalDragCancel: () => print('canceled drag'),
      onHorizontalDragEnd: (d) => print('end'),
      onHorizontalDragStart: (d) => print('starting drag'),
      onHorizontalDragDown: (d) => print('finger Down'),
      onHorizontalDragUpdate: (d) => print('still dragging horizontal'),
      onVerticalDragUpdate: (d)  => print('still dragging vertical'),
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(left: 80),
        color: colorState.color,
      ),
    );
  }
}