// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class mytext extends StatelessWidget {
  mytext({super.key, required this.data});
  String? data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 166, 137, 217),
          fontWeight: FontWeight.bold),
    );
  }
}
