class CounterScreenState{
  int count;
  String name;

  CounterScreenState({required this.count, this.name ="vimal"});

  CounterScreenState copyWith({int? newCount,  String? newName}){
    return CounterScreenState(count: newCount ?? count, name: newName ?? name);
  }
}

