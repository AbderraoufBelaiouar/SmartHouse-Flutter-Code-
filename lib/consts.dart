import 'dart:math';

import 'package:flutter/material.dart';

double degToRad(num deg) => deg * (pi / 180.0);

double normalize(value, min, max) => ((value - min) / (max - min));
const OPENWEATHER_API_KEY = "3be8b71956258c17a93312910255e240";
const Color kScaffoldBackgroundColor = Color(0xFFF3FBFA);
const double kDiameter = 300;
const double kMinDegree = 16;
const double kMaxDegree = 28;
