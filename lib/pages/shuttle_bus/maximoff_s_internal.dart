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
          columnWidthMode: ColumnWidthMode.fill,
          headerRowHeight: 70,
          columns: <GridColumn>[
            GridColumn(
                columnName: 'id',
                label: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: const Text(
                      'Station',
                    ))),
            GridColumn(
                columnName: 'name',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text('Trip 1'))),
            GridColumn(
                columnName: 'designation',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text(
                      'Trip 2',
                      overflow: TextOverflow.ellipsis,
                    ))),
            GridColumn(
                columnName: 'salary',
                label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: const Text('Trip 3'))),
          ],
        ),
      )
    ]));
  }

  List<Employee> getEmployeeData() {
    return [
      Employee('PMMD', 'James', 'Project Lead', 20000),
      Employee('An-Nur Mosque', 'Kathryn', 'Manager', 30000),
      Employee('Main Gate', 'Lara', 'Developer', 15000),
      Employee('Village 6', 'Michael', 'Designer', 15000),
      Employee('Chancellor Complex', 'Martin', 'Developer', 15000),
      Employee('R&D Block', 'Newberry', 'Developer', 15000),
      Employee('Village 5', 'Balnc', 'Developer', 15000),
      Employee('Village 4', 'Perry', 'Developer', 15000),
      Employee('PMMD', 'Gable', 'Developer', 15000),
      Employee('Block L', 'Grimes', 'Developer', 15000),
      Employee('Chancellor Complex', 'Grimes', 'Developer', 15000),
      Employee('Village 6', 'Grimes', 'Developer', 15000),
      Employee('An-Nur Mosque', 'Grimes', 'Developer', 15000),
      Employee('PMMD', 'Grimes', 'Developer', 15000)
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class Employee {
  /// Creates the employee class with required details.
  Employee(this.id, this.name, this.designation, this.salary);

  /// Id of an employee.
  final String id;

  /// Name of an employee.
  final String name;

  /// Designation of an employee.
  final String designation;

  /// Salary of an employee.
  final int salary;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(
                  columnName: 'designation', value: e.designation),
              DataGridCell<int>(columnName: 'salary', value: e.salary),
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
