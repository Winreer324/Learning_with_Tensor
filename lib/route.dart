import 'package:flutter/material.dart';
import 'package:learning_with_tensor/main.dart';

class RouteLessons extends StatefulWidget {
  @override
  _RouteLessonsState createState() => _RouteLessonsState();
}

class _RouteLessonsState extends State<RouteLessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Text(
                    'Learning with Tensor',
                    style: TextStyle(color: Colors.white),
                  ),
//                  Image.network(''),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
//            1
            _buildRowItem(
                'Building a Multi-Page Application with Darts Flutter Mobile Framework',
                'lesson one',
                'https://www.youtube.com/watch?v=b2fgMCeSNpY&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=2&t=5s',
                '/lessonone'),
//            2
            _buildRowItem(
                'Making Http requests and Using Json in Darts Flutter Framework',
                'lesson two',
                'https://www.youtube.com/watch?v=xfdG8e9mgU4&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=2',
                '/lessontwo'),
//            3
            _buildRowItem(
                'Building Dynamic Lists with Streams in Darts Flutter Framework',
                'lesson three',
                'https://www.youtube.com/watch?v=hvvYA1N-tEc&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=3',
                '/lessonthree'),
//            4
            _buildRowItem(
                'Using GridView, Tabs, and Steppers in Darts Flutter Framework',
                'lesson four',
                'https://www.youtube.com/watch?v=izbkS2svuq4&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=4',
                '/lessonfour'),
//            5
            _buildRowItem(
                'Using Global Keys to get State and Validate Input in Darts Flutter Framework',
                'lesson five',
                'https://www.youtube.com/watch?v=-Bh_U5u_1Lo&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=5',
                '/lessonfive'),
//            6
            _buildRowItem(
                'The Basics of Animation with Darts Flutter Framework',
                'lesson six',
                'https://www.youtube.com/watch?v=5urRyqOwTuo&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=6',
                '/lessonsix'),
//            7
            _buildRowItem(
                'Advanced Physics Based Animations in Darts Flutter Framework',
                'lesson seven',
                'https://www.youtube.com/watch?v=LHZ0KSvTTqQ&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=7',
                '/lessonseven'),
//            8
            _buildRowItem(
                'Building a Drag and Drop Application with Darts Flutter Framework',
                'lesson eight',
                'https://www.youtube.com/watch?v=On2Oew0NdGo&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=8',
                '/lessoneight'),
//            9
            _buildRowItem(
                'Using Global Keys to get State and Validate Input in Darts Flutter Framework',
                'lesson nine',
                'https://www.youtube.com/watch?v=-Bh_U5u_1Lo&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=5',
                '/lessonnine'),
//            10
            _buildRowItem(
                'Using Global Keys to get State and Validate Input in Darts Flutter Framework',
                'lesson ten',
                'https://www.youtube.com/watch?v=-Bh_U5u_1Lo&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=5',
                '/lessonten'),
//            11
            _buildRowItem(
                'Using Global Keys to get State and Validate Input in Darts Flutter Framework',
                'lesson eleven',
                'https://www.youtube.com/watch?v=-Bh_U5u_1Lo&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=5',
                '/lessoneleven'),
//            11
            _buildRowItem(
                'Using Global Keys to get State and Validate Input in Darts Flutter Framework',
                'lesson twelve',
                'https://www.youtube.com/watch?v=-Bh_U5u_1Lo&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=5',
                '/lessonetwelve'),
          ],
        ),
      ),
      body: Center(
        child: Text('test'),
      ),
    );
  }

  _buildRowItem(String title, String lesson, String link, String route) {
    return ListTile(
      title: Text(title),
      subtitle: Text(lesson),
      leading: IconButton(
        onPressed: () => {
              print(link),
              pushUrl = link,
              Navigator.of(context).pushNamed('/webview'),
            },
        icon: Icon(Icons.public),
      ),
      onTap: () {
        pushUrl = link;
        Navigator.of(context).pushNamed(route);
      },
    );
  }
}
