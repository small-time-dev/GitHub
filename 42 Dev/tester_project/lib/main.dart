import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/*
class CustomDataTableSource extends DataTableSource {
  final int columnCount;
  final int rowCount;

  CustomDataTableSource(this.rowCount, this.columnCount);

  @override
  DataRow? getRow(int index) {
    if (index >= rowCount) return null;
    return DataRow.byIndex(
      index: index,
      cells: List<DataCell>.generate(
        columnCount,
        (columnIndex) => DataCell(Text('R${index + 1}C${columnIndex + 1}')),
      ),
    );
  }

  @override
  bool get isRowCountApproximate => false;

  // Remove the getter since it's already defined by DataTableSource
  // int get rowCount => this.rowCount;

  @override
  int get selectedRowCount => 0;
}
*/

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  /*
  Widget buildCustomDataTable() {
    final data = CustomDataTableSource(30, 32);

    List<DataColumn> generateColumns(int count) {
      return List.generate(
        count,
        (index) {
          String columnName;
          if (index < 26) {
            columnName = String.fromCharCode('A'.codeUnitAt(0) + index);
          } else {
            columnName =
                'A' + String.fromCharCode('A'.codeUnitAt(0) + index - 26);
          }
          return DataColumn(label: Text('Col $columnName'));
        },
      );
    }

// Define a constant for rows per page
    const int defaultRowsPerPage = 30;

    return Container(
      width: 1240, // Fixed width
      height: 800, // Fixed height
      child: PaginatedDataTable2(
        columnSpacing: 12,
        horizontalMargin: 12,
        minWidth: 600,
        columns: generateColumns(32),
        source: data,
        rowsPerPage: defaultRowsPerPage, // Set rows per page explicitly
        fixedLeftColumns: 1,
        fixedTopRows: 1, // To make the first column sticky
        availableRowsPerPage: [5, 10, 20, 30],
        onRowsPerPageChanged: (newRowsPerPage) {
          if (newRowsPerPage != null) {
            // Handle change in rows per page if necessary
          }
        },
        // Add other PaginatedDataTable2 properties as needed.
      ),
    );
  }
  */

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Expanded(
              //child: buildCustomDataTable(),
              child: CustomDataTable(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CustomDataTable extends StatelessWidget {
  final int rowCount;
  final int columnCount;

  CustomDataTable({Key? key, this.rowCount = 30, this.columnCount = 32})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = CustomDataTableSource(rowCount, columnCount);

    List<DataColumn> generateColumns(int count) {
      return List.generate(
        count,
        (index) {
          String columnName;
          if (index < 26) {
            columnName = String.fromCharCode('A'.codeUnitAt(0) + index);
          } else {
            columnName =
                'A' + String.fromCharCode('A'.codeUnitAt(0) + index - 26);
          }
          return DataColumn(label: Text('Col $columnName'));
        },
      );
    }

    const int defaultRowsPerPage = 30;

    return Container(
      width: 1240, // Fixed width
      height: 800, // Fixed height
      child: PaginatedDataTable2(
        columnSpacing: 12,
        horizontalMargin: 12,
        minWidth: 3000,
        columns: generateColumns(columnCount),
        source: data,
        rowsPerPage: defaultRowsPerPage,
        fixedLeftColumns: 1,
        fixedTopRows: 1,
        availableRowsPerPage: [5, 10, 20, 30],
        onRowsPerPageChanged: (newRowsPerPage) {},
        // Add other PaginatedDataTable2 properties as needed.
      ),
    );
  }
}

class CustomDataTableSource extends DataTableSource {
  final int columnCount;
  final int rowCount;

  CustomDataTableSource(this.rowCount, this.columnCount);

  @override
  DataRow? getRow(int index) {
    if (index >= rowCount) return null;
    return DataRow.byIndex(
      index: index,
      cells: List<DataCell>.generate(
        columnCount,
        (columnIndex) => DataCell(Text('R${index + 1}C${columnIndex + 1}')),
      ),
    );
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get selectedRowCount => 0;
}
