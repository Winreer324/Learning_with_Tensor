import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final ThemeData iOSTheme = ThemeData(
  primaryColor: Colors.grey[400],
  primarySwatch: Colors.red,
  primaryColorBrightness: Brightness.dark
);

final ThemeData androidTheme = ThemeData(
    primaryColor: Colors.green[800],
    primarySwatch: Colors.blue[100],
    primaryColorBrightness: Brightness.dark
);

const String defaultUserName = "Igor Zlobin";

class LessonFourteen extends StatefulWidget {
  @override
  _LessonFourteenState createState() => _LessonFourteenState();
}

//MaterialApp(
//title: "Chat Application",
//theme: defaultTargetPlatform == TargetPlatform.iOS
//? iOSTheme
//    : androidTheme,
//),

class _LessonFourteenState extends State<LessonFourteen> with SingleTickerProviderStateMixin {
  final List<Message> messages = <Message>[];
  final TextEditingController controller = TextEditingController();
  bool isWriting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        elevation: Theme.of(context).platform == TargetPlatform.android ? 0.6 : 0.0,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: messages.length,
              reverse: true,
              padding: EdgeInsets.all(8),
              itemBuilder: (_, index) => messages[index],
            ),
          ),
          Divider(height: 1,),
          Container(
            child: buildComposer(),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
          ),
        ],
      )
    );
  }

  buildComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 9.0),
        decoration: Theme.of(context).platform == TargetPlatform.android ? BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.brown[200])
          )
        ) : null,
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: controller,
                onChanged: (String str) {
                  setState(() {
                    isWriting = str.length > 0;
                  });
                },
                onSubmitted: submitMessage,
                decoration: InputDecoration.collapsed(
                  hintText: 'Enter some text to send a message'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              child: Theme.of(context).platform == TargetPlatform.iOS
              ? CupertinoButton(
                child: Text('Submit'),
                onPressed: isWriting ? () => submitMessage(controller.text) : null)
              : IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: isWriting ? () => submitMessage(controller.text) : null,
              )
            ),
          ],
        ),
      ),
    );
  }

  submitMessage(String text) {
    controller.clear();
    setState(() {
      isWriting = false;
    });
    Message message = Message(
      text: text,
      animationController: AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 800)
      ),
    );
    setState(() {
      messages.insert(0, message);
    });
    message.animationController.forward();
  }

  @override
  void dispose() {
    for (Message msg in messages) {
      msg.animationController.dispose();
    }
    super.dispose();
  }
}

class Message extends StatelessWidget{
  final String text;
  final AnimationController animationController;

  const Message({Key key, this.text, this.animationController}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizeTransition(
      sizeFactor: CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOut,
      ),
      axisAlignment: 0.0,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                child: Text(defaultUserName[0]),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(defaultUserName, style: Theme.of(context).textTheme.subhead,),
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    child: Text(text),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}