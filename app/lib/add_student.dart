import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Add Student", home: addstudents());
  }
}

// ignore: camel_case_types
class addstudents extends StatefulWidget {
  const addstudents({Key? key}) : super(key: key);

  @override
  State<addstudents> createState() => _addstudentsState();
}

// ignore: camel_case_types
class _addstudentsState extends State<addstudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Student"),
      ),
      body: Column(children: [
        const SizedBox(height: 70),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter your username',
          ),
        ),
        const SizedBox(height: 30),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter your id',
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            // Respond to button press
          },
          child: const Text('Add Student'),
        ),
      ]),
    );
  }
}
