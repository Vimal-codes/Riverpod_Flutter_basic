import 'package:flutter/material.dart';

class ToggleScreenState {
  final bool isLightOn;
  final Color bgColor;

  const ToggleScreenState({
    required this.isLightOn,
    required this.bgColor,
  });

  ToggleScreenState copyWith({
    bool? isLightOn,
    Color? bgColor,
  }) {
    return ToggleScreenState(
      isLightOn: isLightOn ?? this.isLightOn,
      bgColor: bgColor ?? this.bgColor,
    );
  }
}
