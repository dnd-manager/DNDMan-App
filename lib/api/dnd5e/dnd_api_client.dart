import 'package:dndman_app/api/dnd5e/data_types.dart';
import 'package:http/http.dart';
import 'package:recase/recase.dart';

class DNDAPIClient {
  static final DNDAPIClient instance = DNDAPIClient();
  static const String _serverURL = "https://www.dnd5eapi.co/api";

  final Client client = Client();

  Uri _getUri(DND5EAPIRequestType requestType, String name) {
    var id = requestType.name.paramCase;
    return Uri.parse("$_serverURL/$id/$name");
  }

  Uri _getAllUri(DND5EAPIRequestType requestType) {
    return _getUri(requestType, "");
  }
}