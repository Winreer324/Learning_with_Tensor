import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:async';

class LessonFifteen extends StatefulWidget {
  @override
  _LessonFifteenState createState() => _LessonFifteenState();
}

class _LessonFifteenState extends State<LessonFifteen> {

  final TextEditingController controller = TextEditingController();
  List<String> listOne, listTwo;

  @override
  void initState() {
    super.initState();
    listOne = [];
    listTwo = [];
  }

  Future<Null> addString() async {
    Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _sPrefs;
    listOne.add(controller.text);
    prefs.setStringList('list', listOne);
    setState(() {
      controller.text = '';
    });
  }

  Future<Null> clearItems() async {
    Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _sPrefs;
    prefs.clear();
    setState(() {
      listOne = [];
      listTwo = [];
    });
  }

  Future<Null> getStrings() async {
    Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _sPrefs;
    listTwo = prefs.getStringList('list');
    setState(() {});
  }

  Future<Null> updateStrings(String str) async {
    Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      listOne.remove(str);
      listTwo.remove(str);
    });
    prefs.setStringList('list', listOne);

  }

  @override
  Widget build(BuildContext context) {
    getStrings();
    return Scaffold(
      appBar: AppBar(title: Text('Shared Preferences'),),
      body: Center(
        child: ListView(
          children: <Widget>[
            TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Type in something...',
                )),
            RaisedButton(
              child: Text("Submit"),
              onPressed: () {
                addString();
              },
            ),
            RaisedButton(
              child: Text("Clear"),
              onPressed: () {
                clearItems();
              },
            ),
            Flex(
              direction: Axis.vertical,
              children: listTwo == null
                  ? []
                  : listTwo
                  .map((String s) => Dismissible(
                  key: Key(s),
                  onDismissed: (direction) {
                    updateStrings(s);
                  },
                  child: ListTile(
                    title: Text(s),
                    leading: Icon(Icons.delete),
                  )))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}