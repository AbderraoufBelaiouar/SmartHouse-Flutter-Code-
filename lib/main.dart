import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smart1/pages/HomePage.dart';
import 'package:smart1/pages/Validationcode.dart';
import 'package:smart1/pages/temperature.dart';
import 'package:smart1/pages/Login_Page.dart';
import 'package:smart1/pages/Sign_up.dart';
import 'package:smart1/pages/AddScene.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TemperaturePage(),
  ));
}
