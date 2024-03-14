import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homework12/utils/styles/app_text_style.dart';

class ExampleSix extends StatefulWidget {
  const ExampleSix({Key? key}) : super(key: key);

  @override
  State<ExampleSix> createState() => _ExampleSixState();
}

class _ExampleSixState extends State<ExampleSix>
    with SingleTickerProviderStateMixin {
  bool isTrue = true;
  double top=100.0;
  double left=-100;
  double right=0;
  double bottom=100;

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
      body: Column(
        children: [
          AnimatedPositioned(
            top: top,
            duration:const Duration(seconds: 1),
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ),
          const Spacer(),
          // color: colorAnimation.value,),
          TextButton(
              onPressed: () {
                isTrue = !isTrue;
                setState(() {});
              },
              child:Icon(Icons.arrow_circle_up,size:30.sp,)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(
                onPressed: () {
                  isTrue = !isTrue;
                  setState(() {});
                },
                child:Icon(Icons.arrow_circle_left_outlined,size:30.sp,)),
            SizedBox(width: 30.w,),
            TextButton(
                onPressed: () {
                  isTrue = !isTrue;
                  setState(() {});
                },
                child:Icon(Icons.arrow_circle_right_outlined,size:30.sp,))
          ],),
          TextButton(
              onPressed: () {
                isTrue = !isTrue;
                setState(() {});
              },
              child:Icon(Icons.arrow_circle_down,size:30.sp,))
        ],
      ),
    );
  }
}
