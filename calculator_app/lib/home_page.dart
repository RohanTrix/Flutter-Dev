import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1=0.0, num2=0.0, sum = 0.0;
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void doAddition() {
    this.setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doSubtraction() {
    this.setState(() {
      num1 = double.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void doMultiplication() {
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void doDivision() {
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num2 / num1;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Output: $sum",
                  style: new TextStyle(
                    fontSize: 40.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Padding(padding: EdgeInsets.only(bottom: 20)),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter number 1"),
                  controller: t1,
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter number 2"),
                  controller: t2,
                ),
                new Padding(padding: const EdgeInsets.only(top: 20)),
                new Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  new MaterialButton(
                    child: Text('+'),
                    onPressed: doAddition,
                    color: Colors.redAccent,
                  ),
                  new Padding(padding: const EdgeInsets.only(right: 20)),
                  new MaterialButton(
                    child: Text('-'),
                    onPressed: doSubtraction,
                    color: Colors.redAccent,
                  ),
                ]),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new MaterialButton(
                      child: Text('*'),
                      onPressed: doMultiplication,
                      color: Colors.redAccent,
                    ),
                    new Padding(padding: const EdgeInsets.only(right: 20)),
                    new MaterialButton(
                      child: Text('/'),
                      onPressed: doDivision,
                      color: Colors.redAccent,
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
