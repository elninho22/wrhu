import 'package:flutter/material.dart';

Widget AppNavigationSimple(BuildContext context, GlobalKey bottomNavigationKey,
    int page, Function onTapped) {
  return new BottomNavigationBar(
    key: bottomNavigationKey,
    onTap: onTapped,
    currentIndex: page, // new
    type: BottomNavigationBarType.shifting,
    items: [
      new BottomNavigationBarItem(
        icon: const Icon(Icons.home, size: 35, color: Colors.white),
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      new BottomNavigationBarItem(
        icon: const Icon(Icons.folder_special, size: 35, color: Colors.white),
        title: Text(
          'Biblioteca',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      new BottomNavigationBarItem(
        icon: const Icon(Icons.notification_important,
            size: 35, color: Colors.white),
        title: Text(
          'Notificações',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      new BottomNavigationBarItem(
        icon: const Icon(Icons.question_answer, size: 35, color: Colors.white),
        title: Text(
          'Chat',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      )
    ],
  );
}
