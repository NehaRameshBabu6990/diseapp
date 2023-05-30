import 'dart:math';

import 'package:flutter/material.dart';
class diceapp extends StatefulWidget {
  const diceapp({Key? key}) : super(key: key);

  @override
  State<diceapp> createState() => _diceappState();
}

class _diceappState extends State<diceapp> {
  int leftdicenumber=2;
  int rightdicenumber=1;
  void ChangeDicenumber(){setState(() {
    leftdicenumber=Random().nextInt(6)+1;
    rightdicenumber=Random().nextInt(6)+1;
  });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(onPressed: (){
              ChangeDicenumber();
            }, child: Image.asset('images/dice$leftdicenumber.jpg'),
            ),
          ),
          Expanded(
              child: TextButton(onPressed: (){}, child: Image.asset('images/dice$rightdicenumber.jpg'),),),
        ],

      ),
        backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Dice App'
        ),

      ),
    );
  }
}
