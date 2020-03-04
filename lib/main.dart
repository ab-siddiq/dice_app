import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text(
              'Dicee',
            ),
            backgroundColor: Colors.red,

          ),
          body: DicePage(),
        ),
      ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImage = 5;
  int rightImage = 3;
  void changeDiceFace(){
    setState(() {
      leftImage = Random().nextInt(6) + 1;
      rightImage = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Row(
        children: <Widget>[

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){
                  changeDiceFace();
                },
                child: Image.asset('images/dice$leftImage.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    changeDiceFace();
                  });
                },
                child: Image.asset('images/dice$rightImage.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
