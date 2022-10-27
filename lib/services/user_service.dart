import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider_ogrenme/models/users_model.dart';

class PersonelService {
  var url = Uri.parse('https://reqres.in/api/users?page=2');
  Future<UsersModel?> fetchPersonels() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map userMap = jsonDecode(response.body);
      return UsersModel.fromJson(userMap);
    } else {
      print('hata veri getirilemedi : ${response.statusCode}');
    }
  }
}
