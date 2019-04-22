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
                'Building a Temperature Conversion Application using Darts Flutter Framework',
                'lesson nine',
                'https://www.youtube.com/watch?v=5tioWH6rWLc&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=9',
                '/lessonnine'),
//            10
            _buildRowItem(
                'Using Inherited Widgets and Gesture Detectors in Darts Flutter Framework',
                'lesson ten',
                'https://www.youtube.com/watch?v=4I68ilX0Y24&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=10',
                '/lessonten'),
            Container(height: 2,width: MediaQuery.of(context).size.width,color: Colors.green,),
//            11
            _buildRowItem(
                'Using Gradients, Fractional Offsets, Page Views and Other Widgets in Darts Flutter Framework',
                'lesson eleven',
                'https://www.youtube.com/watch?v=vgcv4Fn9ERo&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=11',
                '/lessoneleven'),
//            12
            _buildRowItem(
                'Building a Calculator Layout using Darts Flutter Framework',
                'lesson twelve',
                'https://www.youtube.com/watch?v=MvxyazbTkQg&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=12',
                '/lessontwelve'),
            //            13
            _buildRowItem(
                'Finishing our Calculator Application with Darts Flutter Framework',
                'lesson thirteen (not work :( )',
                'https://www.youtube.com/watch?v=jx9-RlMs350&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=13',
                '/lessonthirteen'),
            //            14
            _buildRowItem(
                'Dart Flutter Chat App Tutorial',
                'lesson fourteen',
                'https://www.youtube.com/watch?v=WwhyaqNtNQY&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=14',
                '/lessonfourteen'),
            //            15
            _buildRowItem(
                'Making use of Shared Preferences, Flex Widgets and Dismissibles with Darts Flutter framework',
                'lesson fifteen',
                'https://www.youtube.com/watch?v=IvrAAMQnj4k&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=15',
                '/lessonfifteen'),
            //            16
            _buildRowItem(
                'Using the Different Style Widgets and Properties in Darts Flutter Framework',
                'lesson sixteen',
                'https://www.youtube.com/watch?v=VXOrNjMEm4A&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=16',
                '/lessonsixteen'),
            //            17
            _buildRowItem(
                'Composing Animations and Chaining Animations in Darts Flutter Framework',
                'lesson seventeen',
                'https://www.youtube.com/watch?v=JQxEEnA3ny8&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=17',
                '/lessonseventeen'),
            //            18
            _buildRowItem(
                'Building a Calculator Layout using Darts Flutter Framework',
                'lesson eighteen',
                'https://www.youtube.com/watch?v=MvxyazbTkQg&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=12',
                '/lessoneighteen'),
            //            19
            _buildRowItem(
                'Building a Calculator Layout using Darts Flutter Framework',
                'lesson nineteen',
                'https://www.youtube.com/watch?v=MvxyazbTkQg&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=12',
                '/lessonnineteen'),
            //            20

            _buildRowItem(
                'Building a Calculator Layout using Darts Flutter Framework',
                'lesson twenty',
                'https://www.youtube.com/watch?v=MvxyazbTkQg&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=12',
                '/lessontwenty'),
            Container(height: 2,width: MediaQuery.of(context).size.width,color: Colors.red,),
            //            21
            _buildRowItem(
                'Building a Calculator Layout using Darts Flutter Framework',
                'lesson twelve',
                'https://www.youtube.com/watch?v=MvxyazbTkQg&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=12',
                '/lessonetwelve'),
            //            12
            _buildRowItem(
                'Building a Calculator Layout using Darts Flutter Framework',
                'lesson twelve',
                'https://www.youtube.com/watch?v=MvxyazbTkQg&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=12',
                '/lessonetwelve'),
            //            12
            _buildRowItem(
                'Building a Calculator Layout using Darts Flutter Framework',
                'lesson twelve',
                'https://www.youtube.com/watch?v=MvxyazbTkQg&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=12',
                '/lessonetwelve'),
            //            12
            _buildRowItem(
                'Building a Calculator Layout using Darts Flutter Framework',
                'lesson twelve',
                'https://www.youtube.com/watch?v=MvxyazbTkQg&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=12',
                '/lessonetwelve'),
            //            12
            _buildRowItem(
                'Building a Calculator Layout using Darts Flutter Framework',
                'lesson twelve',
                'https://www.youtube.com/watch?v=MvxyazbTkQg&list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd&index=12',
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
