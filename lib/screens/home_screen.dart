import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_app/cubits/todo/todo_cubit.dart';
import 'package:todo_bloc_app/models/todo_model.dart';
import 'package:todo_bloc_app/screens/add_note_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: BlocBuilder<TodoCubit, List<TodoModel>>(
        builder: (context, todos) {
          return ListView.builder(
            itemBuilder: (context, index) => ListTile(
              title: Text(todos[index].todoText),
              subtitle: Text(todos[index].createdAt.toString()),
            ),
            itemCount: todos.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const AddNoteScreen())),
        tooltip: 'AddToDo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
