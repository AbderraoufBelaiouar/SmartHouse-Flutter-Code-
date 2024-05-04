// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart1/Components/ScensCreation.dart';
import 'package:smart1/Components/forms.dart';
import 'package:smart1/pages/Scene.dart';

class ScheduleScenePage extends StatefulWidget {
  const ScheduleScenePage({super.key});

  @override
  State<ScheduleScenePage> createState() => _ScheduleScenePageState();
}

class _ScheduleScenePageState extends State<ScheduleScenePage> {
  Scene myscene = Scene(
      startTime: TimeOfDay.now(),
      endTime: TimeOfDay.now(),
      date: DateTime.now(),
      obj: "lighting");
  bool iswitched = false;
  late bool on;
  final TextEditingController _SceneNameController = TextEditingController();
  String? _selectedValue = "Lighting";
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        myscene.date = value!;
      });
    });
  }

  void _showTimePicker1() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        myscene.startTime = value!;
      });
    });
  }

  void _showTimePicker2() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        myscene.endTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: GNav(
        tabs: [
          GButton(
            icon: Icons.home,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          GButton(
            icon: Icons.add,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScheduleScenePage(),
                ),
              );
            },
          ),
          const GButton(
            icon: Icons.account_circle,
          ),
        ],
      ),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Row(
            children: [
              Text(
                "Create a scene",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          mytext(data: "Scene Name"),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 50,
          //     width: 350,
          //     decoration: BoxDecoration(
          //       color: const Color.fromARGB(153, 239, 232, 232),
          //       borderRadius:
          //           BorderRadius.circular(30.0), // Add rounded corners here
          //     ),
          //     child: TextField(
          //       controller: _SceneNameController,
          //       decoration: InputDecoration(
          //         hintText: "     Enter name of scene",
          //         border: UnderlineInputBorder(
          //           borderRadius: BorderRadius.circular(30.0),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(153, 239, 232, 232),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  // Change ListTile to Row for better layout
                  children: [
                    const SizedBox(width: 15.0),
                    const Icon(
                      Icons.near_me_disabled,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(
                        width: 10.0), // Add spacing between icon and text field
                    Expanded(
                      // Use Expanded to fill remaining space
                      child: TextField(
                        controller: TextEditingController(
                            text: "my scene"), // Set initial text
                        decoration: const InputDecoration(
                          border: InputBorder
                              .none, // Remove default border (optional)
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                      "${myscene.date.year}-${myscene.date.month}-${myscene.date.day}",
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
            time: myscene.startTime,
          ),
          // 3- end time
          mytext(data: "End Time"),
          ChoiceDetector(
            F: _showTimePicker2,
            icon: Icons.timer_outlined,
            time: myscene.endTime,
          ),
          mytext(data: "Device"),
          const SizedBox(
            height: 10,
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

          Switch(
              value: iswitched,
              onChanged: (value) {
                setState(() {
                  iswitched = value;
                  on = iswitched;
                });
              }),

          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
                onPressed: () {
                  // myscene.date,myscene.startTime,_endTime,on,
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
