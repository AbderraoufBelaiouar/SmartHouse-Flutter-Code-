// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class SmartDiviceBox extends StatelessWidget {
  final String SmartDiviceNAme;
  final Icon iconp;
  final bool PowerOn;
  const SmartDiviceBox({super.key,
  required this.SmartDiviceNAme,
  required this.iconp,
  required this.PowerOn
  }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(children: [
          iconp,
          Text(SmartDiviceNAme),
        ],),
      ),
    )
    ;
  }
}