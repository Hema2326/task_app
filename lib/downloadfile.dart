import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
// ignore: unused_import
import 'package:permission_handler/permission_handler.dart';

class Downloads extends StatefulWidget {
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  void _requestDownload(String link) async {
    // ignore: unused_local_variable
    final taskId = await FlutterDownloader.enqueue(
      url:
          'https://cms.tn.gov.in/sites/default/files/forms/sign_language_interpretor_appl.pdf',
      savedDir: 'the path of directory where you want to save downloaded files',
      showNotification:
          true, // show download progress in status bar (for Android)
      openFileFromNotification:
          true, // click on notification to open downloaded file (for Android)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DownloadFile'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: InkWell(onTap: () {
            _requestDownload(
                'https://cms.tn.gov.in/sites/default/files/forms/sign_language_interpretor_appl.pdf');
          }),
        ));
  }
}
