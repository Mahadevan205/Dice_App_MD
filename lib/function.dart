// First one Positional argument without curly basis
/*
void add(a, b) {
  // a & b are positional parameters
  print(a + b); // print() is a built-in function that will be explained later
}

void main() {
  add(5,
      10); // 5 is used as a value for a, because it's the first argument; 10 is used as a value for b
}
*/

/*
// this is an named argument in the functions
void add({a, b}) {
  // a & b are positional parameters
  print(a + b); // print() is a built-in function that will be explained later
}

void main() {
  add(
      b: 7,
      a: 9); // 5 is used as a value for a, because it's the first argument; 10 is used as a value for b
}

*/

import 'package:flutter/material.dart';
import 'package:example/gradientcontainer.dart';

// for separating each files and connecting one by one.

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(200, 30, 45, 10),
        body: GradientColor(),
      ),
    ),
  );
}
