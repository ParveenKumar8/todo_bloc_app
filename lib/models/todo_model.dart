// ignore_for_file: public_member_api_docs, sort_constructors_first
class TodoModel {
  final String todoText;
  final DateTime createdAt;
  final DateTime modifiedAt;

  TodoModel({
    required this.todoText,
    required this.createdAt,
    required this.modifiedAt,
  });

  @override
  String toString() =>
      'TodoModel(todoText: $todoText, createdAt: $createdAt, modifiedAt: $modifiedAt)';
}
