import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber=1;
  int rightdiceNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          //flex:1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    print('Bouton gauche hello');
                    Random random = new Random();
                    int min = 1;
                    int max = 6;
                    leftdiceNumber = min + random.nextInt(max-min);
                  });
                },
                child: Image.asset('images/dice$leftdiceNumber.png')),
          ),
        ),
        /*Spacer(
          flex:2
        ),*/
        Expanded(
          //flex:1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  print('Bouton gauche hello');
                  Random random = new Random();
                  int min = 1;
                  int max = 6;
                  rightdiceNumber =min + random.nextInt(max-min);
                });
              },
              child: Image(
                image: AssetImage('images/dice$rightdiceNumber.png'),
                //width:150.0
              ),
            ),
          ),
        ),
      ]),
    );
  }
}


