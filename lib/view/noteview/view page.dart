import 'dart:math';

import 'package:flutter/material.dart';

import '../noteadd/noteEdit.dart';

class NoteViewScreen extends StatelessWidget {
  const NoteViewScreen({super.key, required this.title, required this.date, required this.details, required this.index, required this.id});
final int index;
  final int id;
  final String title;
final String date;
final String details;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Note Details Screen"),

      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NoteEditScreen()));
              },

              child: Icon(Icons.edit_note, size: 30,)),
        )
      ],
      ),
      body: Center(child: Column(children: [Text("${title}"), Text("${date}"), Text("${details}")])),
    );
  }
}