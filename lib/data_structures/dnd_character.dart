import 'package:reflectable/reflectable.dart';

class DNDCharacter extends Reflectable {
  final String playerName;
  DNDCharacter(this.playerName): super(metadataCapability);
}