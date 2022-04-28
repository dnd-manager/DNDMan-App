import 'dart:convert';
import 'dart:io';

import 'package:dndman_app/api/data/user.dart';
import 'package:dndman_app/api/data/user_create.dart';
import 'package:http/http.dart' as http;

class APIClient {
  static final APIClient instance = APIClient();
  static const String _serverURL = "http://localhost:8080";

  Future createUser(UserCreate create) async {
    final http.Response response = await http.post(
      _getURL("/users"),
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: jsonEncode(
        create.toJson(),
      ),
    );

    final int responseCode = response.statusCode;
    _handleResponse(responseCode, "create user");
  }

  Future<User> getUser(int id) async {
    final http.Response response = await http.get(
      _getURL("/users/$id"),
    );

    final int responseCode = response.statusCode;
    _handleResponse(responseCode, "get user");

    return User.fromJson(jsonDecode(response.body));
  }

  Future<String> createSession(int userID) async {
    final http.Response response = await http.post(
      _getURL("/user_sessions/create/$userID"),
    );

    final int responseCode = response.statusCode;
    _handleResponse(responseCode, "create session");

    print(response.body);

    return response.body;
  }

  Future deleteSession() async {

  }


  Uri _getURL(String route) {
    return Uri.parse(_serverURL + route);
  }

  void _handleResponse(int responseCode, String process) {
    switch(responseCode) {
      case 200:
        break;
      default:
        throw HttpException("Invalid HTTP Request on $process, response code: $responseCode");
    }
  }
}