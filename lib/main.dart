import 'package:flutter/material.dart';

import 'circle_of_fifths.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Circle of Fifths',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AppWidget(title: 'Circle of Fifths'),
    );
  }
}

class AppWidget extends StatefulWidget {
  const AppWidget({super.key, required this.title});

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: const SafeArea(minimum: EdgeInsets.all(64.0),
        child: Center(
          child: CircleOfFifths(),
        ),
      ),
    );
  }
}