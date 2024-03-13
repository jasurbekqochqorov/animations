import 'package:flutter/material.dart';

class ExampleSecond extends StatefulWidget {
  const ExampleSecond({Key? key}) : super(key: key);

  @override
  State<ExampleSecond> createState() => _ExampleSecondState();
}

class _ExampleSecondState extends State<ExampleSecond> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Demo"),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          curve: Curves.decelerate,
          child:Container(
            width: 250,
            height: 250,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeOpacity,
        child: const Text('Fade'),
      ),
    );
  }
}
