import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_app/cubits/todo/todo_cubit.dart';
import 'package:todo_bloc_app/screens/add_note_screen.dart';
import 'package:todo_bloc_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        title: 'ToDo Bloc App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const HomeScreen(title: "ToDo App"),
          '/addNote': (_) => const AddNoteScreen(),
        },
        //home: const HomeScreen(title: 'ToDo App'),
      ),
    );
  }
}
