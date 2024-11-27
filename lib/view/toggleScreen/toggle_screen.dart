import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/toggle_screen_controller/toggle_screen_controller.dart';
import '../../controller/toggle_screen_controller/toggle_screen_state.dart';

class ToggleScreen extends ConsumerWidget {
  const ToggleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the state
    final toggleState = ref.watch(ToggleStateNotifierProvider) as ToggleScreenState;

    return Scaffold(
      backgroundColor: toggleState.bgColor,
      body: Center(
        child: SwitchExample(

          isLightOn: toggleState.isLightOn,
          onToggle: (value) =>
              ref.read(ToggleStateNotifierProvider.notifier).toggleLight(value),
        ),
      ),
    );
  }
}

class SwitchExample extends StatelessWidget {
  final bool isLightOn;
  final ValueChanged<bool> onToggle;

  const SwitchExample({
    super.key,
    required this.isLightOn,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isLightOn,
      activeColor: Colors.red,
      onChanged: onToggle,
    );
  }
}
