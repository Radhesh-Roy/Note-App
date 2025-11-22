import 'package:flutter/material.dart';
import 'package:mynote/view/bottombar/bottombar.dart';
import 'package:mynote/view/note/notes.dart';
import 'package:mynote/view/splashScreen.dart';
void main(){
  runApp(MyNote());
}

class MyNote extends StatelessWidget {
  const MyNote({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
