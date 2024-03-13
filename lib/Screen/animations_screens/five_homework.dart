import 'package:flutter/material.dart';
import 'package:homework12/utils/styles/app_text_style.dart';

class ExampleFive extends StatefulWidget {
  const ExampleFive({Key? key}) : super(key: key);

  @override
  State<ExampleFive> createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive>
    with SingleTickerProviderStateMixin {
  bool isTrue = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Padding"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              color: (isTrue) ? Colors.orange : Colors.green,
              height: 200,
              width: 200,
              duration: const Duration(seconds: 2),
              child: Center(
                child: (isTrue)
                    ? AnimatedDefaultTextStyle(
                        style: AppTextStyle.interRegular,
                        duration:const  Duration(seconds: 2),
                        child:const Text("This first widget"),
                      )
                    : AnimatedDefaultTextStyle(
                        style: AppTextStyle.interRegular,
                        child: const Text('This is Second '),
                        duration: const Duration(seconds: 2)),
              ),
            ),
            // color: colorAnimation.value,),
            TextButton(
                onPressed: () {
                  isTrue = !isTrue;
                  setState(() {});
                },
                child: const Text('Click here'))
          ],
        ),
      ),
    );
  }
}
