import 'package:flutter/material.dart';
import 'package:mynote/database/notes.dart';
import 'package:mynote/view/note/widget/NoteCard.dart';
import 'package:mynote/view/note/widget/searchBar.dart';
import 'package:mynote/view/noteadd/noteadd.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Note",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            MySearchBar(),
            Expanded(
              child: ListView.builder(

                itemCount: NotesData.list.length,
                itemBuilder: (context, i) {
                  return NoteCard(i: 0);
                },
              ),
            ),
            FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NoteAddScreen())).then((c)=>{
                setState(() {

                }),
              });
            }, child: Icon(Icons.add),
              backgroundColor: Colors.white,)
          ],
        ),
      ),
    );
  }
}
