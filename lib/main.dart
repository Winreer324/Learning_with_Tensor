import 'package:flutter/material.dart';
import 'package:learning_with_tensor/route.dart';

void main() => runApp(MyApp());

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
        '/' : (context) =>  MyHomePage(),
      },
    );
  }
}
