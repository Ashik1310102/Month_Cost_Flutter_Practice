import 'package:flutter/material.dart';

void main() {
  runApp(MyCost());
}

class MyCost extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Cost",
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY Daily Cost"),
      ),
      body: Center(
        child: Text("Lest's Start"),
      ),
    );
  }
}

