import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task_app/screens/downloadfile.dart';

class Offlinee extends StatefulWidget {
  @override
  _OfflineeState createState() => _OfflineeState();
}

class _OfflineeState extends State<Offlinee> {
  String data;

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<String> readContent() async {
    try {
      final file = await _localFile;
      // Read the file
      String contents = await file.readAsString();
      // Returning the contents of the file
      return contents;
    } catch (e) {
      // If encountering an error, return
      return 'Error!';
    }
  }

  Future<File> writeContent() async {
    final file = await _localFile;
    // Write the file
    return file.writeAsString('M2P');
  }

  @override
  void initState() {
    super.initState();
    writeContent();
    readContent().then((String value) {
      setState(() {
        data = value;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offline Storage'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Downloads()));
              }),
        ],
      ),
      body: Center(
        child: Text(
          'Data read from a file: \n $data',
        ),
      ),
    );
  }
}
