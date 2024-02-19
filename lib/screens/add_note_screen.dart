import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_app/cubits/todo/todo_cubit.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String noteText = "";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              onChanged: (value) => noteText = value,
              decoration: const InputDecoration(
                hintText: "Enter a new note",
              ),
              maxLines: 4,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                //BlocProvider.of<TodoCubit>(context).addTodo(noteText.trim());
                context.read<TodoCubit>().addTodo(noteText.trim());
                Navigator.of(context).pop();
              },
              child: const Text("New Note"),
            )
          ],
        ),
      ),
    );
  }
}
