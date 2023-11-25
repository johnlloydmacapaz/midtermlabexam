import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List students = [
    {'name': 'John'},
    {'name': 'Lloyd'},
    {'name': 'Macapaz'},
  ];

  // Function to count letters and spaces in a given string
  Map<String, int> countLettersAndSpaces(String input) {
    int letterCount = input.length;
    return {'letters': letterCount};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
        leading: Icon(Icons.home),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          Map<String, int> counts =
          countLettersAndSpaces(students[index]['name']);

          return ListTile(
            leading: Icon(Icons.person),
            title: Text(students[index]['name']),
            subtitle: Text(
              '${counts['letters']} Letters ',
            ),
          );
        },
      ),
    );
  }
}