import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          )
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 10.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25.0
                  )
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                ),
                FlatButton(
                  onPressed: () {

                  }, 
                  color: Colors.lightBlueAccent,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                )
              ],
            ),
        ),
      ),
    );
  }
}