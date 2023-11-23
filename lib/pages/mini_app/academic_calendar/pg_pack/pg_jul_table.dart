import 'package:flutter/material.dart';

class PgJulTable extends StatelessWidget {
  const PgJulTable({super.key});

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
                                  child: Text('Start'),
                                ),
                                Center(
                                  child: Text('Until'),
                                ),
                                Center(
                                  child: Text('No. Weeks'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Orientation Week'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Lecture'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Study Break'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Exam Week'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Sem Break'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                                Center(
                                  child: Text('Data'),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ))));
  }
}
