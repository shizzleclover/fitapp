import 'package:flutter/material.dart';
import "package:fitapp/Pages/playingpage.dart";
import 'Pages/workoutspage.dart';
import "Pages/friendspage.dart";
import "Pages/discoverpage.dart";
import "Pages/mainscreen.dart";
import 'Pages/workpage.dart';
import 'Pages/activitypage.dart';
import 'Pages/bodybackpage.dart';
import 'Pages/notificationspage.dart';
import 'Pages/startrandompage.dart';
import 'Pages/livesessionpage.dart';
import 'Pages/startworkoutpage.dart';
import 'Pages/bodypageback_2.dart';
import 'Pages/workoutdetailspage.dart';
import 'Pages/startworkingoutpage.dart';
import 'Pages/calendarPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const Calendarpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
