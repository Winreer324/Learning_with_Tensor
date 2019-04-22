import 'package:flutter/material.dart';

class LessonNine extends StatefulWidget {
  @override
  _LessonNineState createState() => _LessonNineState();
}

class _LessonNineState extends State<LessonNine> {
  double input;
  double output;
  bool fOrc;

  @override
  void initState() {
    super.initState();
    input = 0.0;
    output = 0.0;
    fOrc = true;
  }

  @override
  Widget build(BuildContext context) {
    TextField inputField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (str) {
        try {
          input = double.parse(str);
        } catch(e) {
          input = 0.0;
        }
      },
      decoration: InputDecoration(
        labelText: "Input a Value in ${fOrc == false ? 'Fahrenheit' : 'Celsius'}",
      ),
    );

    Container tempSwitch = Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15,),
          Text('Choose Fahrenheit or Celsius'),
          Switch(
            value: fOrc,
            onChanged: (e) {
              setState(() {
                fOrc = !fOrc;
              });
            },
          ),

          Checkbox(
            value: fOrc,
            onChanged: (e) {
              setState(() {
                fOrc = !fOrc;
              });
            },
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('F'),
              Radio<bool>(
                groupValue: fOrc,
                value: false,
                onChanged: (v) {
                  setState(() {
                    fOrc = !fOrc;
                  });
                },
              ),

              Text('C'),
              Radio<bool>(
                groupValue: fOrc,
                value: true,
                onChanged: (v) {
                  setState(() {
                    fOrc = !fOrc;
                  });
                },
              ),
            ],
          ),

        ],
      ),
    );

    Container calcBtn = Container(
      child: RaisedButton(
        child: Text('Calculate'),
        onPressed: () {
          setState(() {
            fOrc == false
                ? output = (input - 32) * (5 / 9)
                : output = (input * 9 / 5) + 32;
          });
          AlertDialog dialog = AlertDialog(
            content: fOrc == false
                ? Text("${input.toStringAsFixed(3)} F : ${output.toStringAsFixed(3)} C")
                : Text("${input.toStringAsFixed(3)} C : ${output.toStringAsFixed(3)} F"),
          );
          showDialog(context: context, child: dialog);
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text('Temperature Calculator'),),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.tealAccent,
        child: Column(
          children: <Widget>[
            inputField,
            tempSwitch,
            calcBtn
          ],
        ),
      )
    );
  }
}