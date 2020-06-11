import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/20099478?s=460&u=8179ff95019a020aa96e69bd6012ea557d658727&v=4'),
              ),
              Text(
                'Leonardo Caracho',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'SourceSansPro-Light',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 150,
                height: 20.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '44 99743-5350',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro-Light',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    ),
                  )
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'leeo.apc@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro-Light',
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
