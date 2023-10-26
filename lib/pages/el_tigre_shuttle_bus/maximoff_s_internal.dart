import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class InternalBusScheduleTemp extends StatefulWidget {
  const InternalBusScheduleTemp({super.key});

  @override
  State<InternalBusScheduleTemp> createState() =>
      _InternalBusScheduleTempState();
}

class _InternalBusScheduleTempState extends State<InternalBusScheduleTemp> {
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            width: 400,
            child: Align(
              alignment: Alignment.center,
              child: Column(children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 0,
                        left: 15,
                        right: 15,
                        bottom: 0,
                      ),
                      child: Icon(
                        Icons.emoji_objects_rounded,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "• Bus will NOT deployed on PUBLIC HOLIDAY",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context)
                                .colorScheme
                                .onTertiaryContainer,
                          ),
                        ),
                        const Text(
                          "",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ]),
            )),
      ),
      Expanded(
        child: SfDataGrid(
          source: employeeDataSource,
          columnWidthMode: ColumnWidthMode.auto,
          headerGridLinesVisibility: GridLinesVisibility.horizontal,
          headerRowHeight: 70,
          columns: <GridColumn>[
            GridColumn(
                columnName: 'station',
                label: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: const Text('Station/Checkpoint'))),
            GridColumn(
                columnName: 'trip_1',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text('Trip 1'))),
            GridColumn(
                columnName: 'trip_2',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text('Trip 2'))),
            GridColumn(
                columnName: 'trip_3',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text('Trip 3'))),
            GridColumn(
                columnName: 'trip_4',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text('Trip 4'))),
            GridColumn(
                columnName: 'trip_5',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text('Trip 5'))),
            GridColumn(
                columnName: 'trip_6',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text('Trip 6'))),
            GridColumn(
                columnName: 'trip_7',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text('Trip 7'))),
          ],
        ),
      )
    ]));
  }

  List<Employee> getEmployeeData() {
    return [
      Employee(
          'PMMD', '7:00', '8:00', '12:00', '13:00', '14:00', '16:00', '17:00'),
      Employee('An-Nur Mosque', '7:03', '8:03', '12:03', '13:03', '14:03',
          '16:03', '17:03'),
      Employee('Main Gate', '7:05', '8:05', '12:05', '13:05', '14:05', '16:05',
          '17:05'),
      Employee('Village 6', '7:10', '8:10', '12:10', '13:10', '14:10', '16:10',
          '17:10'),
      Employee('Chancellor Complex', '7:13', '8:13', '12:13', '13:13', '14:13',
          '16:13', '17:13'),
      Employee('R&D Block', '7:20', '8:20', '12:20', '13:20', '14:20', '16:20',
          '17:20'),
      Employee('Village 5', '7:23', '8:23', '12:23', '13:23', '14:23', '16:23',
          '17:23'),
      Employee('Village 4', '7:25', '8:25', '12:25', '13:25', '14:25', '16:25',
          '17:25'),
      Employee(
          'PMMD', '7:35', '8:35', '12:35', '13:35', '14:35', '16:35', '17:35'),
      Employee('Block L', '7:40', '8:40', '12:40', '13:40', '14:40', '16:40',
          '17:40'),
      Employee('Chancellor Complex', '7:43', '8:43', '12:43', '13:43', '14:43',
          '16:43', '17:43'),
      Employee('Village 6', '7:45', '8:45', '12:45', '13:45', '14:45', '16:45',
          '17:45'),
      Employee('An-Nur Mosque', '7:48', '8:48', '12:48', '13:48', '14:48',
          '16:48', '17:48'),
      Employee(
          'PMMD', '7:50', '8:50', '12:50', '13:50', '14:50', '16:50', '17:50')
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class Employee {
  /// Creates the employee class with required details.
  Employee(
    this.station,
    this.trip_1,
    this.trip_2,
    this.trip_3,
    this.trip_4,
    this.trip_5,
    this.trip_6,
    this.trip_7,
  );

  /// Id of an employee.
  final String station;

  /// Name of an employee.
  final String trip_1;
  final String trip_2;
  final String trip_3;
  final String trip_4;
  final String trip_5;
  final String trip_6;
  final String trip_7;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'station', value: e.station),
              DataGridCell<String>(columnName: 'trip_1', value: e.trip_1),
              DataGridCell<String>(columnName: 'trip_2', value: e.trip_2),
              DataGridCell<String>(columnName: 'trip_3', value: e.trip_3),
              DataGridCell<String>(columnName: 'trip_4', value: e.trip_4),
              DataGridCell<String>(columnName: 'trip_5', value: e.trip_5),
              DataGridCell<String>(columnName: 'trip_6', value: e.trip_6),
              DataGridCell<String>(columnName: 'trip_7', value: e.trip_7),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
