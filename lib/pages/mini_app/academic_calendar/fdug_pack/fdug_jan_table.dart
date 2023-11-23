import 'package:flutter/material.dart';

class FdUgJanTable extends StatelessWidget {
  const FdUgJanTable({super.key});

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
                                  child: Text('03 Jan'),
                                ),
                                Center(
                                  child: Text('08 Jan'),
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
                                  child: Text('09 Jan'),
                                ),
                                Center(
                                  child: Text('31 Mac'),
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
                                  child: Text('01 Apr'),
                                ),
                                Center(
                                  child: Text('03 Apr'),
                                ),
                                Center(
                                  child: Text('03 days'),
                                ),
                              ],
                            ),
                            const TableRow(
                              children: <Widget>[
                                Center(
                                  child: Text('Exam Week'),
                                ),
                                Center(
                                  child: Text('04 Apr'),
                                ),
                                Center(
                                  child: Text('18 Apr'),
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
                                  child: Text('19 Apr'),
                                ),
                                Center(
                                  child: Text('07 May'),
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
