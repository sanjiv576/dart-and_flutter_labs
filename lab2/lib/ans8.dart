import 'dart:io';

// Create a simple to-do application that allows users to add, remove, and view their task.

// gloabl tasks --> using set since tasks should be unique
Set todoTasks = {};

void main() {
  // run app
  toDoApp();
}

void toDoApp() {
  print('--------------- Welcome to TODO APP --------------- ');

  String? userResponse;
  int? userInput;

  do {
    // show options and take input from user
    userInput = takeInput();

    // compare user input and perform operations accordingly
    performTask(option: userInput);

    print('Do you want to quit ? Press (y/n)');
    userResponse = stdin.readLineSync()!.toLowerCase();
  } while (userResponse == 'n');
}

void addTask({required String taskName}) {
  todoTasks.add(taskName);
  print('New task has been added successfully.\n');
}

void removeTask({required String taskName}) {
  // remove task if the given task is already in the map
  if (todoTasks.contains(taskName)) {
    todoTasks.remove(taskName);
    print('$taskName has been removed successfully.');
  }
  // throw message if the task is not found
  else {
    print('Sorry, $taskName is not found in TODO app.\n');
    takeInput();
  }
}

void viewTasks() {
  print('--------------- TODO APP --------------- ');
  // iterate each task
  for (String task in todoTasks) {
    print(task);
  }
}

void showInstruction() {
  print(
      'Press 1 - add new tasks \nPress 2- remove the task \nPress 3 - view all tasks');
}

void performTask({required int option}) {
  switch (option) {
    //  option 1 - add task
    case 1:
      {
        print('Enter task name for adding :');
        String userTaskName = stdin.readLineSync()!;
        addTask(taskName: userTaskName);
      }
      break;

    // option 2 - remove given task

    case 2:
      {
        print('Enter task name for removing : ');
        String removeThisTask = stdin.readLineSync()!;
        removeTask(taskName: removeThisTask);
      }

      break;

    // option 3 - view all tasks
    case 3:
      {
        viewTasks();
      }
      break;

    // wrong user entry
    default:
      {
        print('Oops! wrong entry');
        takeInput();
      }
      break;
  }
}

int takeInput() {
  showInstruction();
  int userInput = int.parse(stdin.readLineSync()!);
  return userInput;
}
