import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numberdiceleft =4;
  int numberdiceRight =3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset("assets/images/dice$numberdiceleft.png"),
                  onPressed: () {
                    numberdiceleft=Random().nextInt(6)+1;
                    numberdiceRight= Random().nextInt(6)+1;
                    print(numberdiceleft);
                    setState(() {

                    });
                  },
                ),
              ),
              Expanded(
                  child: TextButton(
                    child: Image.asset("assets/images/dice$numberdiceRight.png"),

                    onPressed: () {
                      numberdiceRight= Random().nextInt(6)+1;
                      numberdiceleft=Random().nextInt(6)+1;
                      print(numberdiceRight);
                      setState(() {

                      });

                    },
                  )),
            ],
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Diceapp"),
        ),
      ),
    );
  }
}
