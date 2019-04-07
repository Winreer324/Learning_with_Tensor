import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

class LessonThree extends StatefulWidget {
  @override
  _LessonThreeState createState() => _LessonThreeState();
}

class _LessonThreeState extends State<LessonThree> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PhotoList(),
    );
  }
}

class PhotoList extends StatefulWidget {
  @override
  _PhotoListState createState() => _PhotoListState();
}

class _PhotoListState extends State<PhotoList> {
  StreamController<Photo> _streamController;
  List<Photo> list = [];

  @override
  void initState() {
    super.initState();
    _streamController = StreamController.broadcast();

    _streamController.stream.listen((p) => {
      setState(() => list.add(p))
    });

    load(_streamController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Streams'),
      ),
      body: Center(
        child: ListView.builder(
//          itemCount: ,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _makeElement(index),
        ),
      ),
    );
  }

  load(StreamController<Photo> streamController) async {
    String url = 'https://jsonplaceholder.typicode.com/photos';
    var client = http.Client();

    var req = http.Request('get', Uri.parse(url));

    var streamedRes = await client.send(req);

    streamedRes.stream
    .transform(utf8.decoder)
    .transform(json.decoder)
    .expand((e) => e)
    .map((map) => Photo.fromJsonMp(map))
        .pipe(streamController);
  }
  @override
  void dispose() {
    super.dispose();
    _streamController?.close();
    _streamController = null;
  }

  _makeElement(int index) {
    if (index >= list.length ){ return null; }

    return Container(
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(list[index].url,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(list[index].title,)),
            ),
          ],
        ),
      ),
      padding: EdgeInsets.all(15),
    );
  }
}

class Photo {
  final String title;
  final String url;

  Photo.fromJsonMp(Map map)
      : title = map['title'],
        url = map['url'];
}
