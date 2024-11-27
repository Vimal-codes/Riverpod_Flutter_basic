import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/counter_screen_controller/counter_screen_controller.dart';
import '../../controller/counter_screen_controller/counter_screen_state.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final counterScreenState = ref.watch(CounterScreenStateNotifierProvider) as CounterScreenState; //step 5
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(counterScreenState.name),
          Text(counterScreenState.count.toString())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(CounterScreenStateNotifierProvider.notifier).onIncrement();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
