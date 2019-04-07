import 'package:flutter/material.dart';

class LessonFive extends StatefulWidget {
  @override
  _LessonFiveState createState() => _LessonFiveState();
}

class _LessonFiveState extends State<LessonFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InputBox(),
    );
  }
}

class InputBox extends StatefulWidget {
  @override
  _InputBoxState createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  bool loggedIn = false;
  TextEditingController _textEditingController;
  String _userName, _email, _password;

  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainKey,
      appBar: AppBar(
        title: Text('Form Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child:  !loggedIn ? Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _textEditingController,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (str) => !str.contains('@') ? 'Not a Valid Email' : null,
                onSaved: (str) => _email = str,
              ),
              TextFormField(
                controller: _textEditingController,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'UserName: ',
                ),
                validator: (str) => str.length <= 5 ? 'Not a Valid UserName' : null,
                onSaved: (str) => _userName = str,
              ),
              TextFormField(
                controller: _textEditingController,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Password: ',
                ),
                validator: (str) => str.length <= 7 ? 'Not a Valid Password' : null,
                onSaved: (str) => _password = str,
                obscureText: true,
              ),
              RaisedButton(
                onPressed: () => onPressed(),
                child: Text('Submit'),
              ),
            ],
          ),
        ) : Center(
          child: Column(
            children: <Widget>[
              Text("Welcome $_userName"),
              RaisedButton(
                child: Text('Log Out'),
                onPressed: () => {
                  setState((){
                    loggedIn = false;
                  })
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  onPressed(){
    var form = formKey.currentState;

    if(form.validate()){
      form.save();
      setState(() {
        loggedIn = true;
      });

      var snackbar = SnackBar(
        content: Text(
          "UserName: $_userName, Email: $_email, Password: $_password,"
        ),
        duration: Duration(milliseconds: 5000),
      );

      mainKey.currentState.showSnackBar(snackbar);
    }
  }
}

