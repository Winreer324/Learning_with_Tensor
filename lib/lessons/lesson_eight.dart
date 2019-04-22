import 'package:flutter/material.dart';

class LessonEight extends StatefulWidget {
  @override
  _LessonEightState createState() => _LessonEightState();
}

class _LessonEightState extends State<LessonEight> {
  Color caughtColor = Colors.cyanAccent;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drag and Drop'),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('press refresh');
        },
        child: Icon(Icons.refresh),
      ),
      body: Stack(
        children: <Widget>[
          DragBox(initPos: Offset(0.0, 0.0), label: 'Box One', itemColor: Colors.red,),
          DragBox(initPos: Offset(100.0, 0.0), label: 'Box Two', itemColor: Colors.lime,),
          DragBox(initPos: Offset(200.0, 0.0), label: 'Box Three', itemColor: Colors.blue,),
          Positioned(
            left: 100,
            bottom: 0.0,
            child: DragTarget(
              onAccept: (Color color) {
                caughtColor = color;
              },
              builder: (context, List<dynamic> accepted, List<dynamic> rejected) {
                return Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: accepted.isEmpty ? caughtColor : Colors.grey.shade200
                  ),
                  child: Center(
                    child: Text('Drag Here!'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DragBox extends StatefulWidget {
  final Offset initPos;
  final String label;
  final Color itemColor;

  DragBox({Key key, this.initPos, this.label, this.itemColor})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => DragBoxState();
}

class DragBoxState extends State<DragBox> {
  Offset position = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: Draggable(
          data: widget.itemColor,
          child: Container(
            width: 100,
            height: 100,
            color: widget.itemColor,
            child: Center(
              child: Text(
                widget.label,
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 20
                ),
              ),
            ),
          ),
          onDraggableCanceled: (velocity, offset) {
            setState(() {
              position = offset;
            });
          },
          feedback: Container(
            width: 120,
            height: 120,
            color: widget.itemColor.withOpacity(.5),
            child: Center(
              child: Text(
                widget.label,
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 18
                ),
              ),
            ),
          ),
      ),
    );
  }
}