import 'dart:js';

import 'package:flutter/material.dart';
import 'package:training_diary/pages/appData/AppData.dart';
import 'package:training_diary/pages/exercises/Exercises.dart';
import 'package:training_diary/pages/main/Main.dart';
import 'package:training_diary/pages/profile/Profile.dart';
import 'package:training_diary/pages/registration/Registration.dart';
import 'package:training_diary/pages/setting/Setting.dart';
import 'package:training_diary/pages/sign/Sign.dart';
import 'package:training_diary/pages/start/Start.dart';
import 'package:training_diary/pages/statistics/Statistics.dart';
import 'package:training_diary/pages/training/Training.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => Start(),
    '/Sign': (context) => Sign(),
    '/Registration': (context) => Registration(),
    '/AppData': (context) => AppData(),
    '/Main': (context) => Main(),
    '/Profile': (context) => Profile(),
    '/Training': (context) => Training(),
    '/Statistics': (context) => Statistics(),
    '/Exercises': (context) => Exercises(),
    '/Setting': (context) => Setting()
  },
));