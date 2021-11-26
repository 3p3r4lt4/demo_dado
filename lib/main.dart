import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset("assets/images/dice1.png"),
                  onPressed: () {
                    print("hola mundo");
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
