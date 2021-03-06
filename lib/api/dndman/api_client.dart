import 'dart:convert';
import 'dart:io';

import 'package:dndman_app/api/dndman/data/auth/user_create.dart';
import 'package:dndman_app/api/dndman/data/auth/user_signin.dart';
import 'package:dndman_app/api/dndman/data/auth/user_signed_in.dart';
import 'package:dndman_app/api/dndman/data/auth/user.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class APIClient {
  static final APIClient instance = APIClient();
  static const String _serverURL = "http://localhost:8080";

  final Client client = Client();

  Future createUser(BuildContext context, UserCreate create) async {
    final Response response = await client.post(
      _getURL("/users"),
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: jsonEncode(
        create.toJson(),
      ),
    );

    final int responseCode = response.statusCode;
    _handleResponse(context, responseCode, "create user");
  }

  Future<User> getUser(BuildContext context, int id) async {
    final Response response = await client.get(
      _getURL("/users/$id"),
    );

    final int responseCode = response.statusCode;
    _handleResponse(context, responseCode, "get user");

    return User.fromJson(jsonDecode(response.body));
  }

  Future<UserSignedIn> signInUser(BuildContext context, UserSigninRequest signinRequest) async {
    final Response response = await client.post(
      _getURL("/user_sessions/signin"),
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: jsonEncode(
        signinRequest.toJson(),
      ),
    );

    final int responseCode = response.statusCode;
    _handleResponse(context, responseCode, "create session");

    return UserSignedIn.fromJson(jsonDecode(response.body));
  }

  Future signOutUser(BuildContext context, String sessionID) async {
    final Response response = await client.post(
      _getURL("/user_sessions/delete/$sessionID"),
    );

    final int responseCode = response.statusCode;
    _handleResponse(context, responseCode, "get user");
  }


  Uri _getURL(String route) {
    return Uri.parse(_serverURL + route);
  }

  void _handleResponse(BuildContext context, int responseCode, String process) {
    switch(responseCode) {
      case 200:
        break;
      case 401:
        _showAlert(context, "Password incorrect!");
        break;
      case 404:
        _showAlert(context, "User with email is not found!");
        break;
      default:
        throw HttpException("Invalid HTTP Request on $process, response code: $responseCode");
    }
  }

  void _showAlert(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(
            message,
            style: DNDTextStyle.normalText(),
          ),
          actions: <Widget>[
            DNDManButtonWidget(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "OK",
                style: DNDTextStyle.normalText(),
              ),
            ),
          ],
        );
      },
    );
  }
}