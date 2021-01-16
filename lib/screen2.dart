import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
  @override
  //context is in every widget and describes where in the widget tree this lives
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('Go Back To Screen 1'),
          onPressed: () {
            //as long as the Scaffold is in its own widget it should be able to call Navigator
            //POP destroys the top screen
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
