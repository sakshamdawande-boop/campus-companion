import 'package:flutter/material.dart';

import '../app_data.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() {
    return _TasksScreenState();
  }
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MY TASKS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: ListView.builder(
          itemCount: tasks.length,

          itemBuilder: (context, index) {
            return Column(
              children: [
                CheckboxListTile(
                  title: Text(
                    tasks[index]['title'],
                  ),

                  value: tasks[index]['done'],

                  onChanged: (value) {
                    setState(() {
                      tasks[index]['done'] = value;
                    });
                  },
                ),

                const Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
