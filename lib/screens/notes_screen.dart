import 'package:flutter/material.dart';

import 'note_detail_screen.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  final List<Map<String, String>> notes = const [
    {
      'title': 'Multivariable Calc',
      'preview': 'Partial derivatives...',
      'content':
          'Partial derivatives...\n\n'
          'Jacobian...\n\n'
          'Gradient and directional derivatives...',
    },
    {
      'title': 'Flutter',
      'preview': 'Navigator.push()...',
      'content':
          'Navigator.push() is used to move to another screen.\n\n'
          'StatelessWidget is used when the screen does not need '
          'changing state.\n\n'
          'StatefulWidget is used when the screen needs changing state.',
    },
    {
      'title': 'MDP',
      'preview': 'Haptic navigation...',
      'content':
          'Haptic navigation...\n\n'
          'Project ideas and progress notes...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MY NOTES',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),

        itemCount: notes.length,

        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),

              leading: Container(
                padding: const EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(10),
                ),

                child: const Icon(
                  Icons.description,
                  color: Colors.indigo,
                ),
              ),

              title: Text(
                notes[index]['title']!,

                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),

                child: Text(
                  notes[index]['preview']!,
                ),
              ),

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NoteDetailScreen(
                        title: notes[index]['title']!,
                        content: notes[index]['content']!,
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
