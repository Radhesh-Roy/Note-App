import 'package:flutter/material.dart';
import 'package:mynote/view/folder/folder.dart';
import 'package:mynote/view/note/notes.dart';
import 'package:mynote/view/settings/settings.dart';
import 'package:mynote/view/trash/trash.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List screens = [Notes(), Folder(), Trash(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.note_add_outlined), label: "Note"),
          BottomNavigationBarItem(icon: Icon(Icons.folder_copy), label: "Folder"),
          BottomNavigationBarItem(icon: Icon(Icons.delete_forever_sharp), label: "Trash"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}