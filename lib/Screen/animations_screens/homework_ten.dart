import 'package:flutter/material.dart';

class ExampleTen extends StatefulWidget {
  const ExampleTen({super.key});

  @override
  State<ExampleTen> createState() => _ExampleTenState();
}

class _ExampleTenState extends State<ExampleTen> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<double> borderSideAnimation;
  late Animation<Color?> colorAnimation;
  late Animation<Color?> color1Animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 6));
    borderSideAnimation=
        Tween<double>(begin:1,end: 20).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.yellow, end: Colors.blue).animate(animationController);
    color1Animation = ColorTween(begin: Colors.brown, end: Colors.red).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.repeat();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Twin"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(100),
              color: colorAnimation.value,
              border: Border.all(width: borderSideAnimation.value,color: color1Animation.value!)
          ),
          height: 200,
          width:200,
        ),
      ),
    );
  }
}
