import 'package:flutter/material.dart';

class FdUgSeptTable extends StatelessWidget {
  const FdUgSeptTable({super.key});

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
                                  child: Text('Item'),
                                ),
                                Center(
                                  child: Text('From'),
                                ),
                                Center(
                                  child: Text('Till'),
                                ),
                                Center(
                                  child: Text('Duration'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Orientation Week'),
                                ),
                                Center(
                                  child: Text('28 Aug'),
                                ),
                                Center(
                                  child: Text('03 Sept'),
                                ),
                                Center(
                                  child: Text('07 days'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Lecture'),
                                ),
                                Center(
                                  child: Text('04 Sept'),
                                ),
                                Center(
                                  child: Text('24 Nov'),
                                ),
                                Center(
                                  child: Text('12 weeks'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Study Break'),
                                ),
                                Center(
                                  child: Text('25 Nov'),
                                ),
                                Center(
                                  child: Text('28 Nov'),
                                ),
                                Center(
                                  child: Text('04 days'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Exam Week'),
                                ),
                                Center(
                                  child: Text('29 Nov'),
                                ),
                                Center(
                                  child: Text('13 Dec'),
                                ),
                                Center(
                                  child: Text('15 days'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Sem Break'),
                                ),
                                Center(
                                  child: Text('14 Dec'),
                                ),
                                Center(
                                  child: Text('07 Jan 2024'),
                                ),
                                Center(
                                  child: Text('4 weeks'),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ))));
  }
}
