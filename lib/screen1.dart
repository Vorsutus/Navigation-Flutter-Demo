import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('Go Forwards To Screen 2'),
          onPressed: () {
            //as long as the Scaffold is in its own widget it should be able to call Navigator
            Navigator.push(
              //where we are in the tree
              context,
              //where we are going next in the tree
              MaterialPageRoute(
                //context is in every widget and describes where in the widget tree this lives
                //it helps the app know where we are and where we are going
                //builder takes a function with input "context"
                builder: (context) {
                  //body that returns what we are navigating to
                  return Screen2();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
