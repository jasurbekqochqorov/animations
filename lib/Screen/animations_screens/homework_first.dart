import 'package:flutter/material.dart';

class ExampleFirst extends StatefulWidget {
  const ExampleFirst({Key? key}) : super(key: key);

  @override
  State<ExampleFirst> createState() => _ExampleFirstState();
}

class _ExampleFirstState extends State<ExampleFirst> with SingleTickerProviderStateMixin {
  bool isTrue=true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Padding + Opacity"),
      ),
      body: Center(
        child: InkWell(
          onTap:(){
            isTrue=!isTrue;
            setState(() {});
          },
          child: AnimatedContainer(
            color:Colors.blue,
            height:(isTrue)?100:100,
            width:isTrue?120:380, duration: const Duration(seconds: 3),
            // color: colorAnimation.value,
          ),
        ),
      ),
    );
  }
}

