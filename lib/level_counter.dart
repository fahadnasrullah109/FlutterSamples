import 'package:flutter/material.dart';

class LevelCounter extends StatefulWidget {
  @override
  _LevelCounterState createState() => _LevelCounterState();
}

class _LevelCounterState extends State<LevelCounter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
          backgroundColor: Colors.red,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            setState(() {
              counter ++;
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Your Level is :'),
              SizedBox(height: 20,),
              Text(
                '$counter',
                style: TextStyle(fontSize: 40.0, color: Colors.red),
              )
            ],
          ),
        ));
  }
}
