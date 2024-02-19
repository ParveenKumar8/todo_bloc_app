import 'package:todo_bloc_app/models/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<TodoModel>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title cannot be empty.');
      return;
    }
    final todo = TodoModel(
        todoText: title, createdAt: DateTime.now(), modifiedAt: DateTime.now());
    // state.add(todo);
    // emit([...state]);
    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<TodoModel>> change) {
    super.onChange(change);
    print("TodoCubit - $change");
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}
