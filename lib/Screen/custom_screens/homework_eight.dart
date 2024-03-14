import 'package:flutter/material.dart';

class ExampleEight extends StatefulWidget {
  const ExampleEight({super.key});

  @override
  State<ExampleEight> createState() => _ExampleEightState();
}

class _ExampleEightState extends State<ExampleEight> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<double> heightAnimation;
  late Animation<double> widthAnimation;
  late Animation<double> borderAnimation;
  late Animation<double> borderSideAnimation;
  late Animation<Color?> colorAnimation;
  late Animation<Color?> color1Animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 6));
    widthAnimation =
        Tween<double>(begin:200, end: 200).animate(animationController);
    borderAnimation=
        Tween<double>(begin:100,end: 10).animate(animationController);
    borderSideAnimation=
        Tween<double>(begin:1,end: 20).animate(animationController);
    heightAnimation =
        Tween<double>(begin: 200, end: 200).animate(animationController);
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
            borderRadius:BorderRadius.circular(borderAnimation.value),
          color: colorAnimation.value,
            border: Border.all(width: borderSideAnimation.value,color: color1Animation.value!)
          ),
          height: heightAnimation.value,
          width: widthAnimation.value,
        ),
      ),
    );
  }
}
