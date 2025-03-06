import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scroll_provider.g.dart';

class ScrollData {
  ScrollData({this.controller, this.alphaAnimation});

  AnimationController? controller;
  Animation<double>? alphaAnimation;
}

@riverpod
class Scroll extends _$Scroll {
  @override
  ScrollData build() {
    return ScrollData();
  }

  bool get initialized => state.controller != null;

  void initState(TickerProvider vsync) {
    final controller = AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 1),
    );
    final alphaAnimation = Tween<double>(
      begin: 0,
      end: 255,
    ).animate(controller);
    state = ScrollData(controller: controller, alphaAnimation: alphaAnimation);
  }

  void animateTo(double value) {
    state.controller!.animateTo(value);
    state = state;
  }
}
