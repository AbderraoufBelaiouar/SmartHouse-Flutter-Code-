// import 'package:flutter/material.dart';

// class choiceDetector extends StatelessWidget {
//   Function()? F;
//   TimeOfDay time;
//   IconData? icon;
//   choiceDetector({required this.time, required this.F, required this.icon});

// ignore_for_file: sort_child_properties_last

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GestureDetector(
//         child: ListTile(
//           tileColor: Color.fromARGB(153, 239, 232, 232),
//           title: Center(
//             child: Text(
//               time.format(context).toString(),
//               style: const TextStyle(
//                 fontSize: 20,
//                 color: Colors.deepPurple,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           onTap: F,
//           leading: Icon(
//             icon,
//             color: Colors.deepPurple,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ChoiceDetector extends StatelessWidget {
  final Function()? F;
  final TimeOfDay time;
  final IconData? icon;

  const ChoiceDetector({
    required this.time,
    required this.F,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(153, 239, 232, 232),
            borderRadius:
                BorderRadius.circular(30.0), // Add rounded corners here
          ),
          child: ListTile(
            title: Center(
              child: Text(
                time.format(context).toString(),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: F,
            leading: Icon(
              icon,
              color: Colors.deepPurple,
            ),
          ),
        ),
        onTap: F, // Redundant onTap here, consider removing
      ),
    );
  }
}
