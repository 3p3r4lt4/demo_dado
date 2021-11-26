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
                    numberdiceleft=6;
                    print(numberdiceleft);
                    setState(() {

                    });
                  },
                ),
              ),
              Expanded(
                  child: TextButton(
                    child: Image.asset("assets/images/dice2.png"),
                    onPressed: () {},
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
