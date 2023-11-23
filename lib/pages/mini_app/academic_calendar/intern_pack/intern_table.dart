import 'package:flutter/material.dart';

class InternTable extends StatelessWidget {
  const InternTable({super.key});

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
                color: Theme.of(context).colorScheme.secondaryContainer,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                            2: FlexColumnWidth(),
                            3: FlexColumnWidth(),
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: <TableRow>[
                            TableRow(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                              children: const <Widget>[
                                Center(
                                  child: Text('Particular'),
                                ),
                                Center(
                                  child: Text('SIT (14 Weeks)'),
                                ),
                                Center(
                                  child: Text('Break*'),
                                ),
                                Center(
                                  child: Text('SIP (14 Weeks)'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('SIIP Jan 2023'),
                                ),
                                Center(
                                  child: Text('09 Jan - 14 Apr'),
                                ),
                                Center(
                                  child: Text('14 Apr - 07 May'),
                                ),
                                Center(
                                  child: Text('08 May - 11 Aug'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('SIIP May 2023'),
                                ),
                                Center(
                                  child: Text('08 May - 11 Aug'),
                                ),
                                Center(
                                  child: Text('12 Aug - 03 Sep'),
                                ),
                                Center(
                                  child: Text('04 Sep - 08 Dec'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('SIIP Sept 2023'),
                                ),
                                Center(
                                  child: Text('04 Sep - 08 Dec'),
                                ),
                                Center(
                                  child: Text('09 Dec - 07 Jan'),
                                ),
                                Center(
                                  child: Text('08 Jan - 12 Apr 2024'),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ))));
  }
}
