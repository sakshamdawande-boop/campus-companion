import 'package:flutter/material.dart';

import '../widgets/home_card.dart';
import '../widgets/daily_tip.dart';

import '../app_data.dart';

import 'schedule_screen.dart';
import 'tasks_screen.dart';
import 'notes_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int pendingTasks = 0;
    for (var task in tasks) {
        if (task['done'] == false) {
            pendingTasks++;
        }
    }
    int completedTasks = tasks.length - pendingTasks;
    double taskProgress = completedTasks / tasks.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CAMPUS COMPANION',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          const SizedBox(height: 15),

          const Text(
            'Greetings Champ! 👋',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            "Here's your day.",
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey[600],
            ),
          ),

          const SizedBox(height: 30),

          // Schedule
          HomeCard(
            icon: Icons.calendar_month,
            title: "Today's Classes",
            subtitle: '3 classes today',
            color: Colors.indigo,

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ScheduleScreen();
                  },
                ),
              );
            },
          ),

          const SizedBox(height: 15),

          // Tasks
          HomeCard(
            icon: Icons.check_circle,
            title: 'Tasks',
            subtitle: '$pendingTasks tasks pending',
            color: Colors.green,

            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                    return const TasksScreen();
                    },
                ),
                ).then((value) {
                setState(() {});
                });
            },
            ),

            const SizedBox(height: 8),

            Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 5,
            ),

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                Text(
                    '$completedTasks of ${tasks.length} tasks completed',

                    style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                    ),
                ),

                const SizedBox(height: 6),

                LinearProgressIndicator(
                    value: taskProgress,
                    backgroundColor: Colors.grey[300],
                    color: Colors.green,
                    minHeight: 7,
                    borderRadius: BorderRadius.circular(10),
                ),
                ],
            ),
            ),
          const SizedBox(height: 15),

          // Notes
          HomeCard(
            icon: Icons.menu_book,
            title: 'Notes',
            subtitle: '${notes.length} notes saved',
            color: Colors.orange,

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NotesScreen();
                  },
                ),
              );
            },
          ),

          const SizedBox(height: 35),

          // Daily Tip
          Container(
            padding: const EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.amber[50],
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.amber[200]!,
              ),
            ),

            child: Column(
              children: [
                const Icon(
                  Icons.lightbulb,
                  color: Colors.amber,
                  size: 32,
                ),

                const SizedBox(height: 8),

                const Text(
                  'Need some motivation?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                TextButton(
                  onPressed: () {
                    showDailyTip(context);
                  },

                  child: const Text(
                    'Show Daily Tip',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
