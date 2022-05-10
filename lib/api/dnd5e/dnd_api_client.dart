import 'dart:convert';

import 'package:dndman_app/api/dnd5e/data/class.dart';
import 'package:dndman_app/api/dnd5e/data/race.dart';
import 'package:dndman_app/api/dnd5e/data_types.dart';
import 'package:http/http.dart';
import 'package:recase/recase.dart';

class DNDAPIClient {
  static final DNDAPIClient instance = DNDAPIClient();
  static const String _serverURL = "https://www.dnd5eapi.co/api";

  final Client client = Client();

  Future<Class?> getClass(String name) async {
    final Response response = await client.get(
      _getUri(DND5EAPIRequestType.classes, name),
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
    );

    final int responseCode = response.statusCode;

    if (_handleResponse(responseCode)) {
      return Class.fromJson(jsonDecode(response.body));
    }

    return null;
  }

  Future<List<Race>> getRaces() async {
    final Response response = await client.get(
      _getAllUri(DND5EAPIRequestType.races),
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
    );

    final int responseCode = response.statusCode;

    List<Race> races = [];
    Map<String, dynamic> racesRaw = jsonDecode(response.body);

    if (_handleResponse(responseCode)) {
      for (var item in racesRaw["results"]) {
        races.add(Race.fromJson(await getData(Uri.parse("https://www.dnd5eapi.co" + item.url))));
      }
    }

    return races;
  }

  Future<Race?> getRace(String name) async {
    final Response response = await client.get(
      _getUri(DND5EAPIRequestType.races, name),
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
    );

    final int responseCode = response.statusCode;

    if (_handleResponse(responseCode)) {
      return Race.fromJson(jsonDecode(response.body));
    }

    return null;
  }

  Future<Map<String, dynamic>> getData(Uri uri) async {
    final Response response = await client.get(
      uri,
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
    );

    final int responseCode = response.statusCode;

    if (_handleResponse(responseCode)) {
      return jsonDecode(response.body);
    }

    return {};
  }

  bool _handleResponse(int responseCode) {
    if (responseCode == 200) {
      return true;
    }
    return false;
  }

  Uri _getUri(DND5EAPIRequestType requestType, String name) {
    var id = requestType.name.paramCase;
    return Uri.parse("$_serverURL/$id/$name");
  }

  Uri _getAllUri(DND5EAPIRequestType requestType) {
    return _getUri(requestType, "");
  }
}