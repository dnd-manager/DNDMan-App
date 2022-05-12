import 'package:dndman_app/api/dnd5e/data_types.dart';

class DNDInfoPageArgument {
  final DND5EAPIRequestType type;
  final String name;

  DNDInfoPageArgument({
    required this.type,
    required this.name,
  });
}
