import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class GradientColorBoxAnimation extends StatefulWidget {
  const GradientColorBoxAnimation({Key? key}) : super(key: key);

  @override
  GradientColorBoxAnimationState createState() =>
      GradientColorBoxAnimationState();
}

class GradientColorBoxAnimationState extends State {
  // set colours
  final List _colors = [
    const Color.fromARGB(255, 185, 185, 255),
    const Color.fromARGB(255, 165, 165, 255),
    const Color.fromARGB(255, 120, 120, 255),
    const Color.fromARGB(255, 100, 100, 255),
  ];

  // track colour
  int _currentColorIndex = 0;

  // set text message
  final List _mssg = [
    "Loading      ",
    "Loading .    ",
    "Loading . .  ",
    "Loading . . ."
  ];

  // track text message
  int _currentTextMssg = 0;

  // animation timing
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  // Start the timer
  void _startTimer() {
    // Set up a periodic timer that triggers the color change every 3 seconds
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _currentColorIndex = (_currentColorIndex + 1) % _colors.length;
        _currentTextMssg = (_currentTextMssg + 1) % _mssg.length;
      });
    });
  }

  // Cancel the timer when the widget is disposed
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: MediaQuery.of(context).size.width * 0.45,
      duration: const Duration(milliseconds: 1000),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        gradient: LinearGradient(
          colors: [
            _colors[_currentColorIndex], // Use the current color
            _colors[(_currentColorIndex + 1) %
                _colors.length], // Use the next color in the list
          ],
          transform:
              GradientRotation(Random().nextDouble()), // add position variation
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          _mssg[_currentTextMssg],
        ),
      ),
    );
  }
}
