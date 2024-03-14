import 'package:flutter/material.dart';
import 'package:homework12/Screen/routes.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> routeNames = [
      firstScreenRoute,
      secondScreenRoute,
      thirdScreenRoute,
      // fourthScreenRoute,
      // fifthScreenRoute,
      // sixthScreenRoute,
      // seventhScreenRoute,
      // eighthScreenRoute,
      // ninthScreenRoute,
      // tenthScreenRoute,
      // eleventhScreenRoute,
      // twelveScreenRoute,
      // thirteenScreenRoute,
      // fourteenScreenRoute,
      // fifteenScreenRoute,
      // sixteenScreenRoute,
      // seventeenthScreenRoute,
      // eighteenthScreenRoute,
      // nineteenthScreenRoute,
      // twentyScreenRoute,
      // twentyFirstScreenRoute,
      // twentySecondScreenRoute
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('All Screen'),
      ),
      body:ListView(children: [
        ...List.generate(routeNames.length, (index){
          return ListTile(
            onTap: (){
              Navigator.pushNamed(context,routeNames[index]);
              setState(() {});
            },
            title: Text("${index+1} screen"),
          );
        })
      ],),
    );
  }
}
