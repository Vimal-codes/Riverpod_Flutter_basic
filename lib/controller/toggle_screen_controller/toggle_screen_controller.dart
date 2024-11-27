import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'toggle_screen_state.dart';

final ToggleStateNotifierProvider = StateNotifierProvider((ref) => ToggleStateNotifier());


class ToggleStateNotifier extends StateNotifier<ToggleScreenState> {
  ToggleStateNotifier() : super(const ToggleScreenState(isLightOn: false, bgColor: Colors.white,
  ));

  void toggleLight(bool value) {
    state = state.copyWith(
      isLightOn: value,
      bgColor: value ? Colors.black : Colors.white,
    );
  }
}


