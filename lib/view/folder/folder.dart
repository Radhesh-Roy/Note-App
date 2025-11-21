import 'package:flutter/material.dart';

class Folder extends StatefulWidget {
  const Folder({super.key});

  @override
  State<Folder> createState() => _FolderState();
}

class _FolderState extends State<Folder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text("Folder Page"),
      ),
    );
  }
}
