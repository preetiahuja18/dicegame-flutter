import 'dart:math';
import 'package:flutter/material.dart';

void main() {

  return runApp(

    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dice'),


          backgroundColor: Colors.black45,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber =1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;//1-6
      rightDiceNumber = Random().nextInt(6)+1;
      print('diceNumber=$leftDiceNumber');
    });

  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(

            child: FlatButton(
              onPressed:() {
                changeDiceFace();

                },
              child: Image(image: AssetImage('images/dice$leftDiceNumber.png'),),),
          ),
          Expanded(
            child: FlatButton(
              onPressed:(){

                changeDiceFace();
              },

              child: Image(image: AssetImage('images/dice$rightDiceNumber.png'),),),

          ),


        ],
      ),
    );
  }

}



