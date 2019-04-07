import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LessonTwo extends StatefulWidget {
  @override
  _LessonTwoState createState() => _LessonTwoState();
}

class _LessonTwoState extends State<LessonTwo> {
  final String url = "https://swapi.co/api/starships";
  List data;
  bool isLoad = false;

  Future<String> getSWData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {'Accept': 'application/json'});

    setState(() {
      var resBody = json.decode(res.body);
      data = resBody['results'];
    });
    print(data);
    setState(() {
      isLoad = true;
    });
    return 'Success!';
  }

  @override
  void initState() {
    super.initState();
    this.getSWData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
      ),
      body: !isLoad ? Center(child: CircularProgressIndicator(),) :  ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (context, index){

          return Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text('Name: ', style: TextStyle(fontSize: 18, color: Colors.black54),),
                          Text(
                            data[index]['name'],
                            style: TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      )
                    ),
                  ),
                  Card(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Text('Modal: ', style: TextStyle(fontSize: 18, color: Colors.black54),),
                          Text(
                            data[index]['model'],
                            style: TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
