import 'dart:ui';

class bgColorScreenState{
  final Color backgroundColor;

  bgColorScreenState({required this.backgroundColor});

  bgColorScreenState copyWith({Color? newBgColor}){
    return bgColorScreenState(backgroundColor: newBgColor ??  backgroundColor);
  }
}