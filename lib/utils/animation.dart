import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SingleAnimation extends OneShotAnimation {
  SingleAnimation(
      String animationName, {
        double mix = 1,
        bool autoplay = true,
        VoidCallback? onStop,
        VoidCallback? onStart,
      }) : super(animationName, mix: mix, autoplay: autoplay, onStop: onStop, onStart: onStart);

  @override
  void onActiveChanged() {
    // Fire any callbacks
    isActive ? onStart?.call() : WidgetsBinding.instance?.addPostFrameCallback((_) => onStop?.call());
  }
}