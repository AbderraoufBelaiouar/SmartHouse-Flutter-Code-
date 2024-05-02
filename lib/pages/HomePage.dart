import 'package:flutter/material.dart';
import 'package:smart1/consts.dart';
import 'package:smart1/pages/Scene.dart';
import 'package:smart1/pages/Scens.dart';
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
                  // RotatedBox(
                  //   quarterTurns: 135,
                  //   child: Icon(
                  //     Icons.bar_chart_rounded,
                  //     color: Colors.indigo,
                  //     size: 28,
                  //   ),
                  // )
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    Container(),
                    // Center(
                    //   child: Image.asset(
                    //     'images/HomePageLogo.jpg',
                    //     scale: 1.2,
                    //   ),
                    // ),
                    const SizedBox(height: 16),
                    const Center(
                      child: Text(
                        'Smart Home',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    message(),
                    const SizedBox(height: 48),
                    const Text(
                      'DEVICES',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TemperaturePage(),
                              ),
                            );
                          },
                          icon: 'images/temperature.png',
                          title: 'TEMPERATURE',
                        ),
                        _cardMenu(
                          icon: 'images/light.png',
                          title: 'LIGHT',
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          icon: 'images/download (4).png',
                          title: 'DOOR',
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
  Color color = Colors.white,
  Color fontColor = Colors.grey,
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
