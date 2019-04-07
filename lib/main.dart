import 'package:flutter/material.dart';
import 'package:learning_with_tensor/lessons/lesson_eight.dart';
import 'package:learning_with_tensor/lessons/lesson_eleven.dart';
import 'package:learning_with_tensor/lessons/lesson_five.dart';
import 'package:learning_with_tensor/lessons/lesson_four.dart';
import 'package:learning_with_tensor/lessons/lesson_nine.dart';
import 'package:learning_with_tensor/lessons/lesson_one.dart';
import 'package:learning_with_tensor/lessons/lesson_seven.dart';
import 'package:learning_with_tensor/lessons/lesson_six.dart';
import 'package:learning_with_tensor/lessons/lesson_ten.dart';
import 'package:learning_with_tensor/lessons/lesson_three.dart';
import 'package:learning_with_tensor/lessons/lesson_twelve.dart';
import 'package:learning_with_tensor/lessons/lesson_two.dart';
import 'package:learning_with_tensor/route.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

//void main() => runApp(MyApp());
void main() => runApp(
  MaterialApp(
    home: MyApp(),
    theme: themData,
  )
);

final ThemeData themData = ThemeData(
  canvasColor: Colors.lightGreenAccent,
  accentColor: Colors.redAccent
);

String pushUrl = '';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tensor',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'With love for Tensor',
      home: RouteLessons(),
      routes: <String, WidgetBuilder> {
        '/webview' : (context) =>  WebviewScaffold(
          url: pushUrl,
          appBar: AppBar(
            title: Text('App'),
          ),
          withZoom: true,
          withLocalStorage: true,
          hidden: true,
        ),
        '/lessonone' : (context) =>  LessonOne(),
        '/lessontwo' : (context) =>  LessonTwo(),
        '/lessonthree' : (context) => LessonThree(),
        '/lessonfour' : (context) =>  LessonFour(),
        '/lessonfive' : (context) =>  LessonFive(),
        '/lessonsix' : (context) =>  LessonSix(),
        '/lessonseven' : (context) =>  LessonSeven(),
        '/lessoneight' : (context) =>  LessonEight(),
        '/lessonnine' : (context) =>  LessonNine(),
        '/lessonten' : (context) =>  LessonTen(),
        '/lessoneleven' : (context) =>  LessonEleven(),
        '/lessontwelve' : (context) =>  LessonTwelve(),
      },
    );
  }
}
