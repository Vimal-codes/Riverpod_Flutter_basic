import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/bgColor_screen_controller/bgColor_screen_controller.dart';
import '../../controller/bgColor_screen_controller/bgColor_screen_state.dart';

class BgColorScreen extends ConsumerWidget {

  const BgColorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final bgColor = ref.watch(bgColorStateNotifierProvider) as bgColorScreenState;

    final containerColor = [
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.pink,
      Colors.white
    ];

    return Scaffold(
      backgroundColor: bgColor.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(containerColor.length, (index){
            return GestureDetector(
              onTap: () {
                ref.read(bgColorStateNotifierProvider.notifier).updateBgColor(containerColor[index]);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                  color: containerColor[index],
                  border: Border.all(
                    color: Colors.black,
                    width: 5
                  )
                ),
              )
            );
          })
        ),
      ),
    );
  }
}
