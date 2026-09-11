# 🏫 Campus Companion

A simple Flutter mobile application designed to help students manage their daily academic activities in one place.

Campus Companion provides quick access to a student's schedule, tasks, notes, and a daily motivational tip through a simple and clean dashboard.

This is my first official Flutter/Dart project, built while learning the fundamentals of Flutter development.

---

## 📱 Features

### 🏠 Home Screen

The Home screen acts as the main dashboard of the application.

It provides quick access to:

- 📅 Today's Classes
- ✅ Tasks
- 📚 Notes
- 💡 Daily Tip

The dashboard also displays the number of pending tasks, saved notes, and task completion progress.

---

### 📅 Schedule

The Schedule screen displays the classes planned for the day.

Each class contains:

- Time
- Subject
- Room/Lab

The schedule is currently stored as a Dart list and is hard-coded for this version.

Example:

- 09:00 AM — Mathematics — AB-204
- 11:00 AM — Technical English — CD-102
- 02:00 PM — Programming Lab — Lab 3

---

### ✅ Tasks

The Tasks screen allows users to mark tasks as completed or incomplete.

The screen demonstrates Flutter state management using:

- `StatefulWidget`
- `setState()`
- `CheckboxListTile`

The Home screen also displays:

- Number of pending tasks
- Number of completed tasks
- Task completion progress

The task state is maintained while the application is running.

---

### 📚 Notes

The Notes section displays a list of academic notes.

Each note contains:

- A title
- A short preview
- Full note content

Tapping a note opens a separate Note Detail screen.

The notes are currently stored in a Dart list and are not permanently saved.

---

### 💡 Daily Tip

The Daily Tip feature displays a motivational or study-related quote inside a dialog.

A list of quotes is used, and a random quote is selected whenever the user requests a new tip.

This feature also demonstrates asynchronous programming using:

- `Future`
- `async`
- `await`
- `Future.delayed()`
- `showDialog()`

---

## 🧩 Technologies Used

- Flutter
- Dart
- Visual Studio Code

No external packages or databases are required for the current version.

---

## 🏗️ Project Structure

The project is divided into multiple Dart files to keep the code organized and easier to understand.

```text
lib/
│
├── main.dart
├── app_data.dart
│
├── screens/
│   ├── home_screen.dart
│   ├── schedule_screen.dart
│   ├── tasks_screen.dart
│   ├── notes_screen.dart
│   └── note_detail_screen.dart
│
└── widgets/
    ├── home_card.dart
    └── daily_tip.dart
.

🎯 Purpose of the Project
The main goal of Campus Companion was to build a small but complete Flutter application while learning the fundamentals of Dart and Flutter.

Instead of trying to build a large application with authentication, databases, APIs, and complex state management, the project focuses on understanding the basics through hands-on development.

The project helped me learn how to:

Build Flutter user interfaces
Create multiple screens
Navigate between screens
Work with Dart lists
Manage changing UI state
Use setState()
Create reusable widgets
Work with asynchronous functions
Use dialogs
Organize a Flutter project into multiple files
