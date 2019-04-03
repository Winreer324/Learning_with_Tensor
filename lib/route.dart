import 'package:flutter/material.dart';

class RouteLessons extends StatefulWidget {
  @override
  _RouteLessonsState createState() => _RouteLessonsState();
}

class _RouteLessonsState extends State<RouteLessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Learning with Tensor'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Building a Multi-Page Application with Darts Flutter Mobile Framework'),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('test'),
      ),

    );
  }
}
