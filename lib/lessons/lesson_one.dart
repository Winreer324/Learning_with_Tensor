import 'package:flutter/material.dart';

class LessonOne extends StatefulWidget {
  @override
  _LessonOneState createState() => _LessonOneState();
}

class _LessonOneState extends State<LessonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
//          onPressed: () => {Navigator.push(context, PageTwo())},
          child: Text('Go to page two (Need to fixed :( )'),
        ),
      ),
    );
  }
}

//class PageTwo extends MaterialPageRoute<Null> {
//  PageTwo()
//      : super(builder: (BuildContext context) {
//          return Scaffold(
//            appBar: AppBar(
//              backgroundColor: Colors.amber,
//              elevation: 7,
//              actions: <Widget>[
//                IconButton(
//                  icon: Icon(Icons.arrow_back),
//                  onPressed: () => Navigator.pop(context),
//                )
//              ],
//            ),
//            body: Center(
//              child: RaisedButton(
//                onPressed: () => {Navigator.push(context, PageThree())},
//                child: Text('Go to page three'),
//              ),
//            ),
//          );
//        });
//}
//
//class PageThree extends MaterialPageRoute<Null> {
//  PageThree()
//      : super(builder: (BuildContext context) {
//          return Scaffold(
//            appBar: AppBar(
//              title: Text('Last page'),
//              backgroundColor: Colors.grey,
//              elevation: 2,
//              actions: <Widget>[
//                IconButton(
//                  icon: Icon(Icons.arrow_back),
//                  onPressed: () => Navigator.pop(context),
//                )
//              ],
//            ),
//            body: Center(
//              child: MaterialButton(
//                onPressed: () => {
//                      Navigator.popUntil(context,
//                          ModalRoute.withName(Navigator.defaultRouteName))
//                    },
//                child: Text('Go home'),
//              ),
//            ),
//          );
//        });
//}
