import 'package:flutter/material.dart';
import 'dart:async';

enum TravellingRequirement { yes, no }

const List<String> eventType = <String>[
  'External (International)',
  'External (Local)',
  'Internal (University)',
  'Internal (Department/Faculty)',
  'Internal (Club Society)'
];

const List<String> clubSocietyEventProgramme = <String>[
  'Club1',
  'Club2',
  'Club3',
  'Club4',
  'Club1',
  'Club2',
  'Club3',
  'Club1',
  'Club2',
  'Club3',
  'Club4',
  'Club1',
  'Club2',
  'Club3',
  'Club4',
  'Club1',
  'Club2',
  'Club3',
  'Club4',
  'Club1',
  'Club2',
  'Club3',
  'Club4',
  'Club5'
];

const List<String> unitOffice = <String>[
  'Mobility',
  'Career Development',
  'Technopreneurship',
  'Talent Enrichment',
  'Campus Life',
  'An-Nur Islamic Centre',
  'Psychological & Councelling Services',
  'Residential Village',
  'Student Support & Advocacy'
];

class EmemoNewRequest extends StatefulWidget {
  const EmemoNewRequest({super.key});
  @override
  State<EmemoNewRequest> createState() => _EmemoNewRequestState();
}

class _EmemoNewRequestState extends State<EmemoNewRequest> {
  int _currentStep = 0;
  DateTime selectedStartDate = DateTime.now();
  DateTime selectedEndDate = DateTime.now();
  DateTime selectedItineraryDate = DateTime.now();
  TimeOfDay selectedItineraryTime = TimeOfDay.now();

  Future<void> _selectItineraryTime(BuildContext context) async {
    final TimeOfDay? pickedStart = await showTimePicker(
        context: context,
        initialTime: selectedItineraryTime,
        initialEntryMode: TimePickerEntryMode.dial);

    if (pickedStart != null && pickedStart != selectedItineraryTime) {
      setState(() {
        selectedItineraryTime = pickedStart;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedStart = await showDatePicker(
        context: context,
        initialDate: selectedStartDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (pickedStart != null && pickedStart != selectedStartDate) {
      setState(() {
        selectedStartDate = pickedStart;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? pickedEnd = await showDatePicker(
        context: context,
        initialDate: selectedEndDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (pickedEnd != null && pickedEnd != selectedEndDate) {
      setState(() {
        selectedEndDate = pickedEnd;
      });
    }
  }

  Future<void> _selectItineraryDate(BuildContext context) async {
    final DateTime? pickedStart = await showDatePicker(
        context: context,
        initialDate: selectedItineraryDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (pickedStart != null && pickedStart != selectedItineraryDate) {
      setState(() {
        selectedItineraryDate = pickedStart;
      });
    }
  }

  final GlobalKey<AnimatedListState> _key = GlobalKey();

  final objective = [];
  final TextEditingController _objectiveTextController =
      TextEditingController();
  void addObjective(String title) {
    objective.insert(0, title);
    _key.currentState!
        .insertItem(0, duration: const Duration(milliseconds: 300));
  }

  void removeObjective(int index, BuildContext context) {
    AnimatedList.of(context).removeItem(index, (context, animation) {
      return FadeTransition(
        opacity: animation,
        child: SizeTransition(
          sizeFactor: animation,
          child: Card(
              elevation: 1,
              child: ListTile(
                title: Text("• ${objective[index]}"),
                trailing: IconButton(
                  icon: const Icon(Icons.close_rounded),
                  onPressed: () => removeObjective(index, context),
                ),
              )),
        ),
      );
    });
  }

  String dropdownValue = eventType.first;
  TravellingRequirement? _character = TravellingRequirement.yes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          scrolledUnderElevation: 5,
          //toolbarHeight: 70,
          title: const Text('Create new request'),
        ),
        body: Stepper(
            //controller: ,
            //type: StepperType.horizontal,
            //physics: const AlwaysScrollableScrollPhysics(),
            elevation: 5,
            currentStep: _currentStep,
            onStepTapped: (int newIndex) {
              setState(() {
                _currentStep = newIndex;
              });
            },
            onStepContinue: () {
              if (_currentStep != 6) {
                setState(() {
                  _currentStep += 1;
                });
              }
            },
            onStepCancel: () {
              if (_currentStep != 0) {
                setState(() {
                  _currentStep -= 1;
                });
              }
            },
            steps: [
              Step(
                  isActive: _currentStep >= 0,
                  title: const Text('Step 1 : Event Info'),
                  content: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 80,
                        child: DropdownMenu<String>(
                          label: const Text('Event Type'),
                          width: MediaQuery.of(context).size.width - 80,
                          inputDecorationTheme: InputDecorationTheme(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          )),
                          initialSelection: eventType.first,
                          onSelected: (String? value) {
                            // This is called when the user selects an item.
                            //setState(() {
                            //  dropdownValue = value!;
                            //});
                          },
                          dropdownMenuEntries: eventType
                              .map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        ),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              const Text('Start Date'),
                              Text("${selectedStartDate.toLocal()}"
                                  .split(' ')[0]),
                              const SizedBox(
                                height: 20.0,
                              ),
                              ElevatedButton(
                                onPressed: () => _selectDate(context),
                                child: const Text('Select date'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              const Text('End Date'),
                              Text(
                                  "${selectedEndDate.toLocal()}".split(' ')[0]),
                              const SizedBox(
                                height: 20.0,
                              ),
                              ElevatedButton(
                                onPressed: () => _selectEndDate(context),
                                child: const Text('Select date'),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            labelText: 'Event Name',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            labelText: 'Event Venue',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Require Travelling'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Radio<TravellingRequirement>(
                                value: TravellingRequirement.yes,
                                groupValue: _character,
                                onChanged: (TravellingRequirement? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              const Text('Yes')
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              Radio<TravellingRequirement>(
                                value: TravellingRequirement.no,
                                groupValue: _character,
                                onChanged: (TravellingRequirement? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              const Text('No'),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
              Step(
                isActive: _currentStep >= 1,
                title: const Text('Step 2 : Information'),
                content: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Name',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: Row(
                        children: [
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width * (38 / 100),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                labelText: 'Position',
                              ),
                            ),
                          ),
                          const Flexible(fit: FlexFit.tight, child: SizedBox()),
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width * (38 / 100),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                labelText: 'Student ID',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Email Address',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Contact No.',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Memorandum Subject',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 80,
                      child: DropdownMenu<String>(
                        label: const Text('Club/Society/Event/Programme'),
                        width: MediaQuery.of(context).size.width - 80,
                        inputDecorationTheme: InputDecorationTheme(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )),
                        initialSelection: clubSocietyEventProgramme.first,
                        onSelected: (String? value) {
                          // This is called when the user selects an item.
                          //setState(() {
                          //  dropdownValue = value!;
                          //});
                        },
                        dropdownMenuEntries: clubSocietyEventProgramme
                            .map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                              value: value, label: value);
                        }).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Advisor Email Address',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Co-Advisor Email Address',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Organized By',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 80,
                      child: DropdownMenu<String>(
                        label: const Text('Unit (Office)'),
                        width: MediaQuery.of(context).size.width - 80,
                        inputDecorationTheme: InputDecorationTheme(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )),
                        initialSelection: unitOffice.first,
                        onSelected: (String? value) {
                          // This is called when the user selects an item.
                          //setState(() {
                          //  dropdownValue = value!;
                          //});
                        },
                        dropdownMenuEntries: unitOffice
                            .map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                              value: value, label: value);
                        }).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Co-Unit',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: 'Background',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                  isActive: _currentStep >= 2,
                  title: const Text('Step 3 : Objective'),
                  content: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 150,
                          child: TextField(
                            controller: _objectiveTextController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              labelText: 'Add objective',
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        IconButton.filledTonal(
                          onPressed: () {
                            addObjective(_objectiveTextController.text);
                            _objectiveTextController.clear();
                          },
                          icon: const Icon(Icons.add),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: (MediaQuery.of(context).size.height / 10) * 2.5,
                      child: AnimatedList(
                        key: _key,
                        initialItemCount: objective.length,
                        itemBuilder: (((context, index, animation) {
                          return FadeTransition(
                            opacity: animation,
                            child: SizeTransition(
                              key: UniqueKey(),
                              sizeFactor: animation,
                              child: Card(
                                  elevation: 1,
                                  child: ListTile(
                                    title: Text("• ${objective[index]}"),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.close_rounded),
                                      onPressed: () =>
                                          removeObjective(index, context),
                                    ),
                                  )),
                            ),
                          );
                        })),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    )
                  ])),
              Step(
                isActive: _currentStep >= 3,
                title: const Text('Step 4 : Programme Details'),
                content: Column(
                  children: [
                    const Text('Add Itinerary'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 150,
                            child: Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    labelText: 'Itinerary',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        const Text('Itinerary Date'),
                                        Text(
                                            "${selectedItineraryDate.toLocal()}"
                                                .split(' ')[0]),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        ElevatedButton(
                                          onPressed: () =>
                                              _selectItineraryDate(context),
                                          child: const Text('Select date'),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        const Text('Time'),
                                        Text(
                                            "${selectedItineraryTime.hour}:${selectedItineraryTime.minute}"
                                                .split(' ')[0]),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        ElevatedButton(
                                          onPressed: () =>
                                              _selectItineraryTime(context),
                                          child: const Text('Select time'),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        IconButton.filledTonal(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        )
                      ],
                    ),
                    const Divider(),
                  ],
                ),
              ),
              Step(
                  isActive: _currentStep >= 4,
                  title: const Text('Step 5 : Committee Details'),
                  content: const Text('Step 5')),
              Step(
                  isActive: _currentStep >= 5,
                  title: const Text('Step 6 : Budget Breakdown'),
                  content: const Text('Step 6')),
              Step(
                  isActive: _currentStep >= 6,
                  title: const Text('Step 7 : Supporting Documents'),
                  content: const Text('Step 7')),
            ]));
  }
}
