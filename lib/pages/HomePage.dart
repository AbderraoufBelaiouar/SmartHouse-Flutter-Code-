// ignore_for_file: unnecessary_string_interpolations, use_super_parameters, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:smart1/consts.dart';
import 'package:smart1/pages/AddScene.dart';
import 'package:smart1/pages/temperature.dart';
import 'package:weather/weather.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final WeatherFactory _wf = WeatherFactory(OPENWEATHER_API_KEY);
  Weather? _weather;
  Color myColor1 = Colors.white;
  Color myColor2 = Colors.white;
  Color myColorImage1 = Colors.deepPurple;
  Color myColorImage2 = Colors.deepPurple;
  Color myfont1 = Colors.deepPurple;
  Color myfont2 = Colors.deepPurple;
  var imageUrl = 'images/door.png';
  @override
  void initState() {
    super.initState();
    _wf.currentWeatherByCityName("Constantine").then((w) {
      setState(() {
        _weather = w;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        tabs: [
          const GButton(
            icon: Icons.home,
          ),
          GButton(
            icon: Icons.add,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScheduleScenePage(),
                ),
              );
            },
          ),
          const GButton(
            icon: Icons.account_circle,
          ),
        ],
      ),
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'HI Abderraouf',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    Container(
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 229, 220, 217),
                              offset: Offset(0, 25),
                              blurRadius: 10,
                              spreadRadius: -12),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${_weather!.areaName},${_weather!.country}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              Text(
                                "${_weather!.date!.day}/${_weather!.date!.month}/${_weather!.date!.year} ",
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "images/suncloud.png",
                                height: 160,
                                width: 150,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "${_weather!.tempFeelsLike!.celsius!.toInt()}°C",
                                    style: const TextStyle(
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      // child: Stack(
                      //   clipBehavior: Clip.none,
                      //   children: [
                      //     Positioned(
                      //       child: Text(""),
                      //       top: -40,
                      //       left: 20,
                      //     ),
                      //     Positioned(
                      //       bottom: 30,
                      //       child: Text(
                      //         "",
                      //         style: TextStyle(
                      //           fontSize: 20,
                      //         ),
                      //       ),
                      //       left: 20,
                      //     )
                      //   ],
                      // ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // _cardMenu(
                        //   icon: 'images/energy.png',
                        //   title: 'ENERGY',
                        // ),
                        _cardMenu(
                          color: Colors.white,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TemperaturePage(),
                              ),
                            );
                          },
                          icon: 'images/tmp.png',
                          title: 'TEMPERATURE',
                          colorOfimage: Colors.deepPurple,
                          fontColor: Colors.deepPurple,
                        ),
                        _cardMenu(
                          fontColor: myfont1,
                          colorOfimage: myColorImage1,
                          icon: 'images/light-bulb.png',
                          title: 'LIGHT',
                          color: myColor1,
                          onTap: () {
                            setState(() {
                              if (myColor1 == Colors.white) {
                                myColor1 = Colors.deepPurple;
                                myColorImage1 = Colors.white;
                                myfont1 = Colors.white;
                              } else {
                                myColor1 = Colors.white;
                                myColorImage1 = Colors.deepPurple;
                                myfont1 = Colors.deepPurple;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          fontColor: myfont2,
                          icon: 'images/energy.png',
                          title: 'ENERGY',
                          color: myColor2,
                          colorOfimage: myColorImage2,
                          onTap: () {
                            setState(() {
                              if (myColor2 == Colors.white) {
                                myColor2 = Colors.deepPurple;
                                myColorImage2 = Colors.white;
                                myfont2 = Colors.white;
                              } else {
                                myColor2 = Colors.white;
                                myColorImage2 = Colors.deepPurple;
                                myfont2 = Colors.deepPurple;
                              }
                            });
                          },
                        ),
                        _cardMenu(
                          color: Colors.white,
                          onTap: () {},
                          icon: 'images/camera.png',
                          title: 'Camera',
                          colorOfimage: Colors.deepPurple,
                          fontColor: Colors.deepPurple,
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget message() {
    return Text("${_weather?.humidity}" ?? "",
        style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold));
  }
}

Widget _cardMenu({
  required String title,
  String? icon,
  VoidCallback? onTap,
  Color? color,
  Color? colorOfimage,
  Color? fontColor,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
        ),
        width: 140,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Image.asset(
              icon!,
              height: 100,
              width: 100,
              color: colorOfimage,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, color: fontColor),
            )
          ],
        ),
      ),
    ),
  );
}
