import 'package:flutter/material.dart';

class ExampleThird extends StatefulWidget {
  const ExampleThird({Key? key}) : super(key: key);

  @override
  State<ExampleThird> createState() => _ExampleThirdState();
}

class _ExampleThirdState extends State<ExampleThird> {
  bool _first = false;
  double _fontSize = 70;
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedDefaultTextStyle"),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 2),
          curve: Curves.bounceInOut,
          style: TextStyle(
            fontSize: _fontSize,
            color: _color,
            fontWeight: FontWeight.bold,
          ),
          child: const Text(
            "Hello Flutter World",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _fontSize = _first ? 70 : 25;
            _color = _first ? Colors.red : Colors.blue;
            _first = !_first;
          });
        },
        child: const Text("Press!"),
      ),
    );
  }
}
