import 'package:flutter/material.dart';

class LessonSixteen extends StatefulWidget {
  @override
  _LessonSixteenState createState() => _LessonSixteenState();
}

class _LessonSixteenState extends State<LessonSixteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Styling'),),
      body: Container(
        alignment: Alignment.center,
        child: Transform(
          transform: Matrix4.identity()..rotateZ(75)..scale(.8),
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: <Color>[Colors.lime, Colors.teal, Colors.white]
              ),
//              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.teal,
                  blurRadius: 25.0,
                  offset: Offset(0.0, 2.4)
                ),
              ],
              shape: BoxShape.circle
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Styling Stuff',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w900,
//            fontFamily: 'Georgia'
                      fontFamily: 'Roboto', // default
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 24
                    ),
                   children: [
                     TextSpan(
                       text: "TextTextTextTextTextTextTextTextTextTextText",
                       style: TextStyle(
                         color: Colors.black.withOpacity(.8),
                         fontSize: 27
                       ),
                     ),
                     TextSpan(
                         text: "Style",
                         style: TextStyle(
                             color: Colors.red,
                           fontSize: 40,
                           fontWeight: FontWeight.w600
                         )
                     ),
                   ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}