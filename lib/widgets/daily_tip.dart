import 'dart:math';

import 'package:flutter/material.dart';

final List<String> tips = [
  "Don't leave your assignments until the last minute.",
  "A little progress every day adds up.",
  "Take short breaks while studying to stay focused.",
];

Future<String> getDailyTip() async {
  await Future.delayed(
    const Duration(seconds: 1),
  );

  Random random = Random();

  int randomNumber = random.nextInt(tips.length);

  return tips[randomNumber];
}

void showDailyTip(BuildContext context) async {
  String tip = await getDailyTip();

  showDialog(
    context: context,

    builder: (context) {
      return AlertDialog(
        title: const Text(
          '💡 DAILY TIP',
        ),

        content: Text(
          tip,

          style: const TextStyle(
            fontSize: 17,
          ),
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },

            child: const Text(
              'OK',
            ),
          ),
        ],
      );
    },
  );
}
