import 'package:flutter/material.dart';

//page routing one page to another page using flutter
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Page Routing'),
      ),
      body: Center(
        child: Text(
          'Page 1',
          style: TextStyle(color: Colors.red[600]),
        ),
      ),
      backgroundColor: Colors.pinkAccent[600],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Page Routing'),
      ),
      body: Center(
        child: Text(
          'Page 2',
          style: TextStyle(color: Colors.red[600]),
        ),
      ),
      backgroundColor: Colors.pinkAccent[600],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(
            MaterialPageRoute(builder: (context) => FirstPage()),
          );
        },
        child: Icon(Icons.navigate_before),
      ),
    );
  }
}
