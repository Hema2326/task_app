import 'package:dio/dio.dart';

Future<Map<String, dynamic>> getCatFactData() async {
  var dio = Dio();
  try {
    Response response = await dio.get('https://cat-fact.herokuapp.com/facts');
    return {"success": true, "data": response.data};
  } on DioError catch (e) {
    return {"success": false, "data": e.toString()};
  }
}

Future<Map<String, dynamic>> getMakeUpData() async {
  var dio = Dio();
  try {
    Response response = await dio.get(
        'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
    return {"success": true, "data": response.data};
  } on DioError catch (e) {
    return {"success": false, "data": e.toString()};
  }
}

Future<Map<String, dynamic>> getRandomData() async {
  var dio = Dio();
  try {
    Response response = await dio.get('https://randomuser.me/api/');
    return {"success": true, "data": response.data};
  } on DioError catch (e) {
    return {"success": false, "data": e.toString()};
  }
}

Future<Map<String, dynamic>> getHeroData(String name, String job) async {
  var dio = Dio();
  try {
    Response response = await dio
        .post('https://reqres.in/api/users', data: {"name": name, "job": job});
    return {"success": true, "data": response.data};
  } on DioError catch (e) {
    return {"success": false, "data": e.toString()};
  }
}

// Future<Response> sendForm(
//     String url, Map<String, dynamic> data, Map<String, File> files) async {
//   Map<String, MultipartFile> fileMap = {};
//   for (MapEntry fileEntry in files.entries) {
//     File file = fileEntry.value;
//     String fileName = basename(file.path);
//     fileMap[fileEntry.key] =
//         MultipartFile(file.openRead(), await file.length(), filename: fileName);
//   }
//   data.addAll(fileMap);
//   var formData = FormData.fromMap(data);
//   Dio dio = new Dio();
//   return await dio.post(url,
//       data: formData, options: Options(contentType: 'multipart/form-data'));
// }
