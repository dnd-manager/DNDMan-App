import 'dart:convert';
import 'dart:io';

import 'package:dndman_app/api/data/auth/user.dart';
import 'package:dndman_app/api/data/auth/user_create.dart';
import 'package:dndman_app/api/data/auth/user_signed_in.dart';
import 'package:dndman_app/api/data/auth/user_signin.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class APIClient {
  static final APIClient instance = APIClient();
  static const String _serverURL = "http://localhost:8080";

  Future createUser(BuildContext context, UserCreate create) async {
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
    _handleResponse(context, responseCode, "create user");
  }

  Future<User> getUser(BuildContext context, int id) async {
    final http.Response response = await http.get(
      _getURL("/users/$id"),
    );

    final int responseCode = response.statusCode;
    _handleResponse(context, responseCode, "get user");

    return User.fromJson(jsonDecode(response.body));
  }

  Future<UserSignedIn> signInUser(BuildContext context, UserSigninRequest signinRequest) async {
    final http.Response response = await http.post(
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
    final http.Response response = await http.post(
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
        showDialog(
          context: context,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: Text(
                "Password incorrect!",
                style: GoogleFonts.notoSerif(),
              ),
              actions: <Widget>[
                DNDManButtonWidget(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "OK",
                    style: GoogleFonts.notoSerif(),
                  ),
                ),
              ],
            );
          },
        );
        break;
      default:
        throw HttpException("Invalid HTTP Request on $process, response code: $responseCode");
    }
  }
}