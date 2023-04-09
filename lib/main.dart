// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 65, 77, 57),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Dicee',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: const Color.fromARGB(255, 179, 180, 178),
        ),
        body: const DicePage(),
        floatingActionButton: FloatingActionButton(
          // elevation: 10.0,
          child: const Icon(Icons.equalizer),
          onPressed: () {
            // action on button press
          },
        ),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
// const DicePage({super.key});
// var leftDiceNumber = 6;

// DicePage({super.key});

// @override
// Widget build(BuildContext context) {
//   return Center(
//     child: Row(
//       children: <Widget>[
//         Expanded(
//           // child: Padding(
//           // padding: EdgeInsets.all(16),
//           child: TextButton(
//             onPressed: () {
//               // ignore: avoid_print
//               print('Left button is clicked ');
//             },
//             child: Image(
//               // width: 200.0,
//               image: AssetImage('images/dice$leftDiceNumber.png'),
//             ),
//           ),
//         ),
//         Expanded(
//           //it is similar to the one in the above
//           child: TextButton(
//             onPressed: () {
//               //ignore: avoid_print
//               print('right button is clicked ');
//             },
//             // const EdgeInsets.all(16),
//             child: Image.asset('images/dice1.png'),
//           ),
//         ),
//       ],
//     ),
//   );
// }
// }
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // child: Padding(
            // padding: EdgeInsets.all(16),
            child: TextButton(
              onPressed: () {
                // ignore: avoid_print
                setState(() {
                  changeFace();
                });
              },
              child: Image(
                // width: 200.0,
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          const Text(
            "+",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          Expanded(
            //it is similar to the one in the above
            child: TextButton(
              onPressed: () {
                //ignore: avoid_print
                // print('right button is clicked ');
                setState(() {
                  changeFace();
                });
              },
              // const EdgeInsets.all(16),
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          const Text(
            '=',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
