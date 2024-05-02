// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smart1/Components/ScensCreation.dart';
import 'package:smart1/Components/forms.dart';

class ScheduleScenePage extends StatefulWidget {
  const ScheduleScenePage({super.key});

  @override
  State<ScheduleScenePage> createState() => _ScheduleScenePageState();
}

class _ScheduleScenePageState extends State<ScheduleScenePage> {
  TimeOfDay _startTime = TimeOfDay.now();
  TimeOfDay _endTime = TimeOfDay.now();
  bool iswitched = false;
  DateTime _dateTime = DateTime.now();
  late bool on;
  String? _selectedValue = "Lighting";
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  void _showTimePicker1() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _startTime = value!;
      });
    });
  }

  void _showTimePicker2() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _endTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Create a scene",
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          mytext(data: "Date"),
          Padding(
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
                      "${_dateTime.year}-${_dateTime.month}-${_dateTime.day}",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onTap: _showDatePicker,
                  leading: const Icon(
                    Icons.date_range,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              // Redundant onTap here, consider removing
            ),
          ),
          // 2-start time
          mytext(data: "Start Time"),
          ChoiceDetector(
            F: _showTimePicker1,
            icon: Icons.timer_outlined,
            time: _startTime,
          ),
          // 3- end time
          mytext(data: "End Time"),
          ChoiceDetector(
            F: _showTimePicker2,
            icon: Icons.timer_outlined,
            time: _endTime,
          ),
          mytext(data: "Device"),
          const SizedBox(
            height: 20,
          ),
          // Declare a variable to store the selected value

          // DropdownButton<String>(
          //   value: _selectedValue, // Set the current value
          //   items: const [
          //     DropdownMenuItem(child: Text("Lighting")),
          //     // DropdownMenuItem(child: Text("plugging")),
          //   ],
          //   onChanged: (String? newValue) {
          //     setState(() {
          //       _selectedValue =
          //           newValue; // Update the state with the new value
          //     });
          //   },
          // ),

          const Center(
            child: DropdownMenu(
              hintText: "choose the device",
              dropdownMenuEntries: <DropdownMenuEntry<String>>[
                DropdownMenuEntry(value: "Lighting", label: "Lighting"),
                DropdownMenuEntry(value: "plugging", label: "plugging"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Switch(
              value: iswitched,
              onChanged: (value) {
                setState(() {
                  iswitched = value;
                  on = iswitched;
                });
              }),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
                onPressed: () {
                  // _dateTime,_startTime,_endTime,on,
                },
                child: const Text(
                  "Save",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
          )
        ],
      ),
    );
  }
}
