import 'package:flutter/material.dart';
import 'package:mynote/view/note/widget/searchBar.dart';

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
        Expanded(child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, i){
          return NoteCard();
        }))
          ],
        ),
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shadowColor: Colors.white70,
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Note", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,),),
                  Text("17 Nov 2025 11:20 PM")
                ],
              ),

            ),
            Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 10,
                ),
                child: Text("Details")

            ),

          ],
        ),
      ),
    );
  }
}
