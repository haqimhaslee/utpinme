import 'package:flutter/material.dart';

class FdUgMayTable extends StatelessWidget {
  const FdUgMayTable({super.key});

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
                                  child: Text('02 May'),
                                ),
                                Center(
                                  child: Text('07 May'),
                                ),
                                Center(
                                  child: Text('06 days'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Lecture'),
                                ),
                                Center(
                                  child: Text('08 May'),
                                ),
                                Center(
                                  child: Text('28 July'),
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
                                  child: Text('29 July'),
                                ),
                                Center(
                                  child: Text('01 Aug'),
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
                                  child: Text('02 Aug'),
                                ),
                                Center(
                                  child: Text('16 Aug'),
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
                                  child: Text('17 Aug'),
                                ),
                                Center(
                                  child: Text('03 Sep'),
                                ),
                                Center(
                                  child: Text('3 weeks'),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ))));
  }
}
