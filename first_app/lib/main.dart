import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: new HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.orange,
          brightness: Brightness.light,
          accentColor: Colors.red),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello World";
  void _changeText() {
    setState(() {
      if (mytext.startsWith('H')) {
        mytext = "Welcome";
      } else {
        mytext = "Hello world";
      }
    });
  }

  Widget _BodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              mytext,
              style: TextStyle(fontSize: 22.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: _BodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}
