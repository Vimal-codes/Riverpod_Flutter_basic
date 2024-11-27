import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'bgColor_screen_state.dart';

final bgColorStateNotifierProvider = StateNotifierProvider((ref) => bgColorStateNotifier());

class bgColorStateNotifier extends StateNotifier<bgColorScreenState> {
  bgColorStateNotifier() : super(bgColorScreenState(backgroundColor: Colors.white));

  void updateBgColor(Color newBgColor){
    state = state.copyWith(newBgColor: newBgColor);
  }
}
