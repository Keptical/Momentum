class Habit {
  final String name;
  final String id;
  bool completed;

  Habit({
    required this.name,
    required this.id,
    this.completed = false,
  });
}