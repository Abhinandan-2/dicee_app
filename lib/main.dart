import 'package:flutter/material.dart';
import 'dart:math';


void main()
{
  return runApp(
    MaterialApp(
      home :  Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text('Welcome to Dicee'),
          ),
        ),
        body : DiceBody(),
      ),
    ),
  );
}

class DiceBody extends StatefulWidget {
  @override
  _DiceBodyState createState() => _DiceBodyState();
}

class _DiceBodyState extends State<DiceBody> {
  int left =Random().nextInt(6)+1 ;
  int right =Random().nextInt(6)+1 ;
  void change() {
    setState(() {
      left = Random().nextInt(6)+1;
      right = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('Dice_image/Dice-$left.png'),
                  ),
                  Expanded(
                    child: Image.asset('Dice_image/Dice-$right.png'),
                  ),
                ],
              ),
            ),
            Center(
                child: RaisedButton(
                  onPressed: (){
                    change();
                  },
                  child: Container(

                    height: 30,
                    width: 100,

                    child : Center(child: Text('Rotate Dicee')),
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}






































