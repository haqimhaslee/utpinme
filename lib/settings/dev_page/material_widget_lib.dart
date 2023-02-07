import 'package:flutter/material.dart';

enum ExerciseFilter { chip1, chip2, chip3, chip4 }

class MaterialWidgetLibrary extends StatefulWidget {
  const MaterialWidgetLibrary({super.key});

  @override
  State<MaterialWidgetLibrary> createState() => _MaterialWidgetLibraryState();
}

class _MaterialWidgetLibraryState extends State<MaterialWidgetLibrary> {
  bool isChecked = false;
  bool light = true;
  bool light1 = true;
  bool light2 = true;
  double _currentSliderValue = 20;
  double _currentSliderPrimaryValue = 0.2;
  double _currentSliderSecondaryValue = 0.5;
  bool favorite = false;
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );
  final List<String> _filters = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Column(
          children: [
            const Text("    "),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('UTPinMe Snackbar 1'),
                        action: SnackBarAction(
                          label: 'CLOSE',
                          onPressed: () {
                            // Code to execute.
                          },
                        ),
                      ),
                    );
                  },
                  child: const Text('Click Me'),
                ),
                const Text("       "),
                TextButton(
                  onPressed: (() {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('UTPinMe Snackbar 2'),
                        action: SnackBarAction(
                          label: 'CLOSE',
                          onPressed: () {
                            // Code to execute.
                          },
                        ),
                      ),
                    );
                  }),
                  child: const Text('  Click Me  '),
                ),
                const Text("       "),
                OutlinedButton(
                    onPressed: (() {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          dismissDirection: DismissDirection.horizontal,
                          content: const Text('UTPinMe Snackbar 3'),
                          action: SnackBarAction(
                            label: 'CLOSE',
                            onPressed: () {
                              // Code to execute.
                            },
                          ),
                        ),
                      );
                    }),
                    child: const Text('Click Me')),
              ],
            ),
            const Text("       "),
            FloatingActionButton(
              onPressed: (() {}),
              child: const Icon(Icons.notifications_rounded),
            ),
            const Text("       "),
            Checkbox(value: isChecked, onChanged: (bool? value) {}),
            const Text("       "),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                    value: light,
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    }),
                const Text("       "),
                Switch(
                    value: light1,
                    onChanged: (bool value) {
                      setState(() {
                        light1 = value;
                      });
                    }),
                const Text("       "),
                Switch(
                  thumbIcon: thumbIcon,
                  value: light2,
                  onChanged: (bool value) {
                    setState(() {
                      light2 = value;
                    });
                  },
                ),
              ],
            ),
            const Text("       "),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 100,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            const Text("       "),
            Slider(
              value: _currentSliderPrimaryValue,
              secondaryTrackValue: _currentSliderSecondaryValue,
              label: _currentSliderPrimaryValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderPrimaryValue = value;
                });
              },
            ),
            Slider(
              value: _currentSliderSecondaryValue,
              label: _currentSliderSecondaryValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderSecondaryValue = value;
                });
              },
            ),
            /*Stepper(
                          steps: <Step>[
                            Step(
                              title: const Text('Step 1 title'),
                              content: Container(),
                            ),
                            Step(
                              title: const Text('Step 2 title'),
                              content: Container(),
                            ),
                          ],
                        ),*/
            const Text("       "),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Choose chip',
                ),
                const SizedBox(height: 5.0),
                Wrap(
                  spacing: 5.0,
                  children:
                      ExerciseFilter.values.map((ExerciseFilter exercise) {
                    return FilterChip(
                      label: Text(exercise.name),
                      selected: _filters.contains(exercise.name),
                      onSelected: (bool value) {
                        setState(() {
                          if (value) {
                            if (!_filters.contains(exercise.name)) {
                              _filters.add(exercise.name);
                            }
                          } else {
                            _filters.removeWhere((String name) {
                              return name == exercise.name;
                            });
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 10.0),
                Text('Looking for: ${_filters.join(', ')}')
              ],
            ),
            const Text(" "),
            const Text(" "),
            const Text("Powered by Google MD3 - m3.material.io"),
            const Text(" "),
            const Text("Universiti Teknologi PETRONAS©️"),
            const Text("Developers Preview"),
            const Text("Version : 23.2.90271620"),
            const Text(" "),
            const Text(" "),
          ],
        ),
      ])
    ]));
  }
}
