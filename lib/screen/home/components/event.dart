class Event {
  final String title;
  final DateTime date;
  Event(
    this.date, {
    required this.title,
  });

  @override
  String toString() => title;
}
