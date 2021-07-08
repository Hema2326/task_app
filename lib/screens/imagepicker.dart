// ignore: avoid_web_libraries_in_flutter
import 'dart:io';

// ignore: unused_import
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/widgets.dart';

// ignore: unused_import
import 'package:path/path.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => new _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _uploadfile(_image);
      } else {
        print('No image selected.');
      }
    });
  }

  // Future<void> uploadImage() async {
  //   String uploadurl = "https://api.imgur.com/3/image";

  //   try {
  //     List<int> imageBytes = _image.readAsBytesSync();
  //     String baseimage = base64Encode(imageBytes);

  //     var response = await http.post(uploadurl, body: {
  //       'image': baseimage,
  //     });
  //     if (response.statusCode == 200) {
  //       var jsondata = json.decode(response.body);
  //       if (jsondata["error"]) {
  //         print(jsondata["msg"]);
  //       } else {
  //         print("Upload successful");
  //       }
  //     } else {
  //       print("Error during connection to server");
  //     }
  //   } catch (e) {
  //     print("Error during converting to Base64");
  //   }
  // }

  // // ignore: unused_element
  void _uploadfile(file) async {
    String filepath = basename(file.path);
    print("File base name: $filepath");
    try {
      FormData formData;
      Map<String, dynamic> request = Map.from({});
      request["image"] = MultipartFile.fromFileSync(file.path);
      formData = FormData.fromMap(request);
      Response response =
          await Dio().post('https://api.imgur.com/3/image', data: formData);
      print("File upload Response:$response");
      // _showSnackBarMsg(response.data['message']);
    } catch (e) {
      print('Exception caught:$e');
    }
  }

  // void _showSnackBarMsg(String msg) {
  //   _scaffoldstate.currentState
  //       // ignore: deprecated_member_use
  //       .showSnackBar(new SnackBar(content: new Text(msg)));
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // key: _scaffoldstate,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: new Text('Upload Image'),
      ),
      body: new Center(
        child: _image == null
            ? new Text('No image selected.')
            : new Image.file(_image),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: this.getImage,
        tooltip: 'Pick Image',
        child: new Icon(Icons.add_a_photo),
      ),
    );
  }
}
