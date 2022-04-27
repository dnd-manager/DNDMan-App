import 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform, kIsWeb;

mixin AdaptiveActionMixin<T> {
  T _android();

  T _ios();

  T _web();

  T _mac();

  T _windows();

  T _linux();

  T _fuchsia();

  T run() {
    if (kIsWeb) {
      return _web();
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _android();
      case TargetPlatform.fuchsia:
        return _fuchsia();
      case TargetPlatform.iOS:
        return _ios();
      case TargetPlatform.linux:
        return _linux();
      case TargetPlatform.macOS:
        return _mac();
      case TargetPlatform.windows:
        return _windows();
    }
  }
}