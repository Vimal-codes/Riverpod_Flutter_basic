import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_screen_state.dart';

final CounterScreenStateNotifierProvider = StateNotifierProvider((ref) =>CounterScreenStateNotifier()); //step4


class CounterScreenStateNotifier extends StateNotifier<CounterScreenState> { //step3
  CounterScreenStateNotifier() : super(CounterScreenState(count: 0));

  // onIncrement(){
  //   state = state.copyWith(newCount: ++state.count, newName: "Luminar");
  // }

  onIncrement(){
    state = state.copyWith(newCount: ++state.count, newName: state.count % 2 == 0 ? "Vimal": "Luminar");
  }

}
