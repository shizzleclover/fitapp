import 'package:fitapp/Pages/friendspage.dart';
import 'package:flutter/material.dart';

import 'package:fitapp/Pages/startworkingoutpage.dart'; // Import the Friendspage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fit App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Friendspage(), // Use Friendspage as the home widget
    );
  }
}
