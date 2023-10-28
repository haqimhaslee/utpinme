import 'package:flutter/material.dart';

class PublicHolidayTable extends StatelessWidget {
  const PublicHolidayTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            //color: Colors.green,
            child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.tertiaryContainer,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SizedBox(
                  child: Center(
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Table(
                          border: TableBorder.all(),
                          columnWidths: const <int, TableColumnWidth>{
                            0: FlexColumnWidth(),
                            1: FlexColumnWidth(),
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: <TableRow>[
                            TableRow(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer,
                              ),
                              children: const <Widget>[
                                Center(
                                  child: Text('Date'),
                                ),
                                Center(
                                  child: Text('Public Holiday'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('01 Jan'),
                                ),
                                Center(
                                  child: Text("New Year's Day"),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('22-24 Jan'),
                                ),
                                Center(
                                  child: Text('Chinese New Year'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('05 Feb'),
                                ),
                                Center(
                                  child: Text('Thaipusam'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('08 Apr'),
                                ),
                                Center(
                                  child: Text('Nuzul Al-Quran'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('22-24 Apr'),
                                ),
                                Center(
                                  child: Text('Aidilfitri'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('01 May'),
                                ),
                                Center(
                                  child: Text('Labour Day'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('04 May'),
                                ),
                                Center(
                                  child: Text('Wesak Day'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('05 June'),
                                ),
                                Center(
                                  child: Text("Agong's Birthday"),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('29 Jun'),
                                ),
                                Center(
                                  child: Text('Aidiladha'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('19 Jul'),
                                ),
                                Center(
                                  child: Text('Awal Muharram'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('31 Aug'),
                                ),
                                Center(
                                  child: Text('National Day'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('16 Sep'),
                                ),
                                Center(
                                  child: Text('Malaysia Day'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('28 Sep'),
                                ),
                                Center(
                                  child: Text('Maulidur Rasul'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('08 Apr'),
                                ),
                                Center(
                                  child: Text("Sultan Perak's Birthday"),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('12-13 Nov'),
                                ),
                                Center(
                                  child: Text('Deepavali'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('25 Dec'),
                                ),
                                Center(
                                  child: Text('Christmas'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('1 Jan'),
                                ),
                                Center(
                                  child: Text("New Year's Day (2024)"),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ))));
  }
}
