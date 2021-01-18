enum Status {
  initial,
  inProgress,
  finished,
}

class Todo {
  final int id;
  final String title;
  final String description;
  final DateTime dueDate;
  final Status status;

  Todo({
    this.id,
    this.title,
    this.description,
    this.dueDate,
    this.status,
  });
}
