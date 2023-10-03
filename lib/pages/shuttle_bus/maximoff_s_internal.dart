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
      Employee('PMMD', 'James', 'Project Lead', '20000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('An-Nur Mosque', 'Kathryn', 'Manager', '30000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('Main Gate', 'Lara', 'Developer', '15000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('Village 6', 'Michael', 'Designer', '15000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('Chancellor Complex', 'Martin', 'Developer', '15000', 'PMMD',
          'James', 'Project Lead', '20000'),
      Employee('R&D Block', 'Newberry', 'Developer', '15000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('Village 5', 'Balnc', 'Developer', '15000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('Village 4', 'Perry', 'Developer', '15000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('PMMD', 'Gable', 'Developer', '15000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('Block L', 'Grimes', 'Developer', '15000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('Chancellor Complex', 'Grimes', 'Developer', '15000', 'PMMD',
          'James', 'Project Lead', '20000'),
      Employee('Village 6', 'Grimes', 'Developer', '15000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('An-Nur Mosque', 'Grimes', 'Developer', '15000', 'PMMD', 'James',
          'Project Lead', '20000'),
      Employee('PMMD', 'Grimes', 'Developer', '15000', 'PMMD', 'James',
          'Project Lead', '20000')
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
