import 'package:reflectable/reflectable.dart';

const ClassReflector reflector = ClassReflector();

class ClassReflector extends Reflectable {
  const ClassReflector(): super(declarationsCapability, typeCapability, metadataCapability, instanceInvokeCapability, newInstanceCapability);
}