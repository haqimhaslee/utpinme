import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../usecases/event_usecase.dart';
import '../widgets/event_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> organizerList = [
    "UTPCO",
    "SYNTECH",
    "ITBZ",
    "PETRA",
    "UPAG",
    "GDSC",
    "SK"
    ""
  ];

  String organizerSelection = "";
  DateTime? dateSelection;
  Timestamp? timestamp;

  @override
  Widget build(BuildContext context) {
    return Consumer<EventUseCase>(
      builder: (context, eventUseCase, child) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 5,
                  ),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.blue[900],
                              ),
                              child: DropdownButton<String>(
                                  hint: organizerSelection == ""
                                      ? const Text(
                                          "Organizer",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          organizerSelection,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                  items: organizerList
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    setState(() {
                                      organizerSelection = value!;
                                    });
                                    debugPrint(
                                        organizerSelection); // TODO: delete in production
                                  }),
                            ),
                          ],
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        OutlinedButton(
                            onPressed: () async {
                              await eventUseCase
                                  .searchEventFromFirestore(organizerSelection);
                            },
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                "   Search   ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                const Divider(),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.5)),
                  scrollDirection: Axis.vertical,
                  itemCount: eventUseCase.searchResults.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final entry = eventUseCase.searchResults[index];
                    return Column(
                      children: [
                        EventCard(
                          imgUrl: "assets/cimb.png",
                          event: entry,
                        ),
                        Text(entry.title),
                        Text("Date: ${entry.dateTime.toString().split(" ")[0]}")
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
