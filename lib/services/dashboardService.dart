import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../models//userModal.dart';
// Future<List<User>> fetchUsersFromGitHub() async {
//   final response = await http.get('https://api.github.com/users');
//   List responseJson = json.decode(response.body.toString());
//   List<User> userList = createUserList(responseJson);
//   return userList;
// }

// List<User> createUserList(List data) {
//   List<User> list = new List();
//   for (int i = 0; i < data.length; i++) {
//     String title = data[i]["login"];
//     int id = data[i]["id"];
//     User user = new User(name: title, id: id);
//     list.add(user);
//   }
//   return list;
// }

Future<User> fetchPost() async {
  final response = await http.get('https://api.github.com/users');
  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    return User.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}
