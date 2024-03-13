
import 'package:flutter/material.dart';
import 'package:homework12/Screen/animations_screens/homework_first.dart';
import 'package:homework12/Screen/animations_screens/homework_four.dart';
import 'package:homework12/Screen/animations_screens/homework_second.dart';
import 'package:homework12/Screen/animations_screens/homework_third.dart';
import 'package:homework12/Screen/main_screen.dart';

import 'animations_screens/five_homework.dart';
import 'animations_screens/homework_eight.dart';
import 'animations_screens/homework_nine.dart';
import 'animations_screens/homework_ten.dart';
import 'animations_screens/seven_homework.dart';
import 'animations_screens/six_homework.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case firstScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFirst());
      case secondScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSecond());
      case thirdScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleThird());
      case fourthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFour());
      case fifthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFive());
      case sixthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSix());
      case seventhScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSeven());
      case eighthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleEight());
      case ninthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleOne());
      case tenthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleTen());
      case eleventhScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleEleven());
      // case twelveScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleTwelve());
      // case thirteenScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleThirteen());
      // case fourteenScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExplicitFourteen());
      // case fifteenScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleFifteen());
      // case sixteenScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleSixteen());
      // case seventeenthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleSeventeen());
      // case eighteenthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => ExampleEighteen());
      // case nineteenthScreenRoute:
      //   return MaterialPageRoute(builder: (_) => Example19());
      // case twentyScreenRoute:
      //   return MaterialPageRoute(builder: (_) => Example20());
      // case twentyFirstScreenRoute:
      //   return MaterialPageRoute(builder: (_) => Example21());
      // case taskScreenRoute:
      //   return MaterialPageRoute(builder: (_) => TaskScreen());
      //
      // case twentySecondScreenRoute:
      //   return MaterialPageRoute(builder: (_) => Example22());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}


const String homeRoute = '/';
const String firstScreenRoute = '/first';
const String secondScreenRoute = '/second';
const String thirdScreenRoute = '/third';
const String fourthScreenRoute = '/fourth';
const String fifthScreenRoute = '/fifth';
const String sixthScreenRoute = '/sixth';
const String seventhScreenRoute = '/seventh';
const String eighthScreenRoute = '/eighth';
const String ninthScreenRoute = '/ninth';
const String tenthScreenRoute = '/tenth';
const String eleventhScreenRoute = '/eleventh';
const String twelveScreenRoute = '/twelve';
const String thirteenScreenRoute = '/thirteen';
const String fourteenScreenRoute = '/fourteen';
const String fifteenScreenRoute = '/fifteen';
const String sixteenScreenRoute = '/sixteen';
const String seventeenthScreenRoute = '/seventeenth';
const String eighteenthScreenRoute = '/eighteenth';
const String nineteenthScreenRoute = '/nineteenth';
const String twentyScreenRoute = '/twenty';
const String twentyFirstScreenRoute = '/twenty_first';
const String twentySecondScreenRoute = '/twenty_second';
