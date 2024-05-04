import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:smart1/consts.dart';

class TemperaturePage extends StatefulWidget {
  const TemperaturePage({Key? key}) : super(key: key);

  @override
  _TemperaturePageState createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  double heating = 12;
  double fan = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Text(
                  'Temperature',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                ),
                Text(
                  'Living room',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Expanded(
              child: SliderWidget(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Current humidity',
                      style: TextStyle(
                        color: Colors.grey.withAlpha(150),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '55%',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Current temp.',
                      style: TextStyle(
                        color: Colors.grey.withAlpha(150),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '25°',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
          ],
          // SafeArea(
          //   child: Container(
          //     margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         SleekCircularSlider(
          //           appearance: CircularSliderAppearance(
          //               size: MediaQuery.of(context).size.width * 0.5,
          //               customColors: CustomSliderColors(
          //                   hideShadow: true, progressBarColor: Colors.deepPurple)),
          //           initialValue: 20,
          //           max: 60,
          //           onChange: (value) {
          //             print(value);
          //           },
          //         )
          //         // Row(
          //         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //   children: [
          //         //     GestureDetector(
          //         //       onTap: () {
          //         //         Navigator.pop(context);
          //         //       },
          //         //       child: const Icon(
          //         //         Icons.arrow_back_ios,
          //         //         color: Colors.indigo,
          //         //       ),
          //         //     ),
          //         //     // const RotatedBox(
          //         //     //   quarterTurns: 135,
          //         //     //   child: Icon(
          //         //     //     Icons.bar_chart_rounded,
          //         //     //     color: Colors.indigo,
          //         //     //     size: 28,
          //         //     //   ),
          //         //     // ):
          //         //   ],
          //         // ),
          //         // Expanded(
          //         //   child: ListView(
          //         //     physics: const BouncingScrollPhysics(),
          //         //     children: [
          //         //       const SizedBox(height: 32),
          //         //       CircularPercentIndicator(
          //         //         radius: 180,
          //         //         lineWidth: 14,
          //         //         percent: 0.75,
          //         //         progressColor: Colors.indigo,
          //         //         center: const Text(
          //         //           '26\u00B0',
          //         //           style: TextStyle(
          //         //             fontSize: 32,
          //         //             fontWeight: FontWeight.bold,
          //         //           ),
          //         //         ),
          //         //       ),
          //         //       const SizedBox(height: 24),
          //         //       const Center(
          //         //         child: Text(
          //         //           'TEMPERATURE',
          //         //           style: TextStyle(
          //         //               fontWeight: FontWeight.bold, color: Colors.black54),
          //         //         ),
          //         //       ),
          //         //       const SizedBox(height: 32),
          //         //       Row(
          //         //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //         children: [
          //         //           _roundedButton(title: 'GENERAL', isActive: true),
          //         //           _roundedButton(title: 'SERVICES'),
          //         //         ],
          //         //       ),
          //         //       const SizedBox(height: 32),
          //         //       Container(
          //         //         padding: const EdgeInsets.symmetric(vertical: 18),
          //         //         decoration: BoxDecoration(
          //         //           color: Colors.white,
          //         //           borderRadius: BorderRadius.circular(8),
          //         //         ),
          //         //         child: Column(
          //         //           crossAxisAlignment: CrossAxisAlignment.start,
          //         //           children: [
          //         //             const Padding(
          //         //               padding: EdgeInsets.symmetric(horizontal: 24),
          //         //               child: Text(
          //         //                 'HEATING',
          //         //                 style: TextStyle(
          //         //                   fontWeight: FontWeight.bold,
          //         //                 ),
          //         //               ),
          //         //             ),
          //         //             Slider(
          //         //               value: heating,
          //         //               onChanged: (newHeating) {
          //         //                 setState(() => heating = newHeating);
          //         //               },
          //         //               max: 30,
          //         //             ),
          //         //             const Padding(
          //         //               padding: EdgeInsets.symmetric(horizontal: 24),
          //         //               child: Row(
          //         //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //                 children: [
          //         //                   Text('0\u00B0'),
          //         //                   Text('15\u00B0'),
          //         //                   Text('30\u00B0'),
          //         //                 ],
          //         //               ),
          //         //             )
          //         //           ],
          //         //         ),
          //         //       ),
          //         //       const SizedBox(height: 24),
          //         //       Container(
          //         //         padding: const EdgeInsets.symmetric(vertical: 18),
          //         //         decoration: BoxDecoration(
          //         //           color: Colors.white,
          //         //           borderRadius: BorderRadius.circular(8),
          //         //         ),
          //         //         child: Column(
          //         //           crossAxisAlignment: CrossAxisAlignment.start,
          //         //           children: [
          //         //             const Padding(
          //         //               padding: EdgeInsets.symmetric(horizontal: 24),
          //         //               child: Text(
          //         //                 'FAN SPEED',
          //         //                 style: TextStyle(
          //         //                   fontWeight: FontWeight.bold,
          //         //                 ),
          //         //               ),
          //         //             ),
          //         //             Slider(
          //         //               value: fan,
          //         //               onChanged: (newFan) {
          //         //                 setState(() => fan = newFan);
          //         //               },
          //         //               max: 30,
          //         //             ),
          //         //             const Padding(
          //         //               padding: EdgeInsets.symmetric(horizontal: 24),
          //         //               child: Row(
          //         //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //                 children: [
          //         //                   Text('LOW'),
          //         //                   Text('MID'),
          //         //                   Text('HIGH'),
          //         //                 ],
          //         //               ),
          //         //             )
          //         //           ],
          //         //         ),
          //         //       ),
          //         //       const SizedBox(height: 24),
          //         //       Row(
          //         //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         //         children: [
          //         //           _fan(title: 'FAN 1', isActive: true),
          //         //           _fan(title: 'FAN 2', isActive: true),
          //         //           _fan(title: 'FAN 3'),
          //         //         ],
          //         //       ),
          //         //       const SizedBox(height: 24),
          //         //     ],
          //         //   ),
          //         // ),
          //       ],
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }

  Widget _fan({
    required String title,
    bool isActive = false,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: isActive ? Colors.indigo : Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Image.asset(
            isActive ? 'images/fan-2.png' : 'images/fan-1.png',
          ),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.black87 : Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget _roundedButton({
    required String title,
    bool isActive = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 32,
      ),
      decoration: BoxDecoration(
        color: isActive ? Colors.indigo : Colors.transparent,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.indigo),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double progressVal = 0.5;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return SweepGradient(
                startAngle: degToRad(0),
                endAngle: degToRad(184),
                colors: [Colors.blue, Colors.grey.withAlpha(50)],
                stops: [progressVal, progressVal],
                transform: GradientRotation(
                  degToRad(178),
                ),
              ).createShader(rect);
            },
            child: Center(
              child: CustomArc(),
            ),
          ),
          Center(
            child: Container(
              width: kDiameter - 30,
              height: kDiameter - 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 20,
                    style: BorderStyle.solid,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 30,
                        spreadRadius: 10,
                        color: Colors.blue.withAlpha(
                            normalize(progressVal * 20000, 100, 255).toInt()),
                        offset: Offset(1, 3))
                  ]),
              child: SleekCircularSlider(
                min: kMinDegree,
                max: kMaxDegree,
                initialValue: 22,
                appearance: CircularSliderAppearance(
                  startAngle: 180,
                  angleRange: 180,
                  size: kDiameter - 30,
                  customWidths: CustomSliderWidths(
                    trackWidth: 10,
                    shadowWidth: 0,
                    progressBarWidth: 01,
                    handlerSize: 15,
                  ),
                  customColors: CustomSliderColors(
                    hideShadow: true,
                    progressBarColor: Colors.transparent,
                    trackColor: Colors.transparent,
                    dotColor: Colors.blue,
                  ),
                ),
                onChange: (value) {
                  setState(() {
                    progressVal = normalize(value, kMinDegree, kMaxDegree);
                  });
                },
                innerWidget: (percentage) {
                  return Center(
                    child: Text(
                      '${percentage?.toInt()}°c',
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomArc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomArcPainter(),
      size: Size(kDiameter, kDiameter),
    );
  }
}

class CustomArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 4.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round;

    var path = Path()
      ..moveTo(0, size.height / 2)
      ..addArc(
          Rect.fromCenter(
              center: Offset(size.height / 2, size.width / 2),
              width: size.width,
              height: size.height),
          pi,
          pi);

    Path dashPath = Path();
    double dashWidth = 9.0;
    double dashSpace = 10;
    double distance = 3;

    for (PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        dashPath.addPath(pathMetric.extractPath(distance, distance + dashWidth),
            Offset.zero);
        distance += dashWidth;
        distance += dashSpace;
      }
    }

    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
