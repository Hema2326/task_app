import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';

import 'package:flutter_downloader/flutter_downloader.dart';

import 'package:permission_handler/permission_handler.dart';

import 'Listss.dart';

class Downloads extends StatefulWidget {
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  void _downloadfile(String link) async {
    final status = await Permission.storage.request();
    if (status.isGranted) {
      final baseStorage = await getTemporaryDirectory();

      // ignore: unused_local_variable
      final id = await FlutterDownloader.enqueue(
          url:
              'https://upload.wikimedia.org/wikipedia/commons/e/e4/GatesofArctic.jpg',
          savedDir: baseStorage.path);
    } else {
      print('no permission');
    }
  }

  int progress = 0;
  ReceivePort receivePort = ReceivePort();
  @override
  void initState() {
    IsolateNameServer.registerPortWithName(
        receivePort.sendPort, "downloadingfile");
    receivePort.listen((message) {
      setState(() {
        progress = message;
      });
    });
    FlutterDownloader.registerCallback(downloadCallback);

    super.initState();
  }

  static downloadCallback(id, status, progress) {
    SendPort sendPort = IsolateNameServer.lookupPortByName('downloadingfile');
    sendPort.send(progress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DownloadFile'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Lists()));
              }),
        ],
      ),
      body: Column(
        children: [
          Text('$progress'),
          Center(
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  _downloadfile(
                      'https://upload.wikimedia.org/wikipedia/commons/e/e4/GatesofArctic.jpg');
                },
                child: Text('Download File'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
