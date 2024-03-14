import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homework12/utils/styles/app_text_style.dart';

class ExampleSeven extends StatefulWidget {
  const ExampleSeven({Key? key}) : super(key: key);

  @override
  State<ExampleSeven> createState() => _ExampleSevenState();
}

class _ExampleSevenState extends State<ExampleSeven> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositioned"),
      ),
      body:Column(children: [
        AnimatedDefaultTextStyle(
          // textAlign: TextAlign.center,
            style:AppTextStyle.interSemiBold.copyWith(
          color: Colors.black,fontSize: (selected)?16.sp:45.sp
        ), duration: const Duration(seconds: 3),
            child:const Padding(
              padding: EdgeInsets.all(32),
              child: Text("Hello world flutter is good ,Welcome to America Everything is gonna be al right"),
            )),
        TextButton(onPressed: (){
          selected=!selected;
          setState(() {});
        }, child: const Text('Bigger font'))
      ],),
    );
  }
}
