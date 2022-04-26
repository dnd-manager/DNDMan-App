import 'package:flutter/cupertino.dart';

void navigatorPushOrPop(BuildContext context, String route) {
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
  } else {
    Navigator.pushNamed(context, route);
  }
}