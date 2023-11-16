import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

const List<String> list = <String>[' ', 'Question', 'Problem', 'Request'];

class CreateCaseUcs extends StatefulWidget {
  const CreateCaseUcs({super.key});

  @override
  State<CreateCaseUcs> createState() => _CreateCaseUcsState();
}

class _CreateCaseUcsState extends State<CreateCaseUcs> {
  final user = FirebaseAuth.instance.currentUser!;

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              top: 10,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: IconButton(
                    icon: const Icon(Icons.close_rounded),
                    tooltip: 'Close',
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const Text(
                  'Create new case',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Flexible(fit: FlexFit.tight, child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: TextButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => Dialog(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                //height: 15,
                                child: LoadingAnimationWidget.staggeredDotsWave(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  size: 70,
                                ),
                              ),
                              const Text('Creating case'),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    child: const Text('Submit'),
                  ),
                )
              ],
            )),
        const Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Divider(),
        ),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 10,
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'Case title',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'Your Enquiry',
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: DropdownMenu<String>(
                          //inputDecorationTheme:
                          label: const Text("Type"),
                          initialSelection: list.first,
                          onSelected: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          dropdownMenuEntries: list
                              .map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        )),
                  ],
                )))
      ],
    );
  }
}
