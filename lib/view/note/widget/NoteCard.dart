
import 'package:flutter/material.dart';
import 'package:mynote/database/notes.dart';

import '../../noteview/view page.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key, required this.i, required this.ontap,
  });
  final int i;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> NoteViewScreen(title: '${NotesData.list[i]['title']}', date: '${NotesData.list[i]['created_at']}', details: '${NotesData.list[i]['details']}',)));
      },

      child: Card(
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
                    Text("${NotesData.list[i]['title']}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,),),
                    Text("${NotesData.list[i]['created_at']}")
                  ],
                ),

              ),
              Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${NotesData.list[i]['details']}"),
                    ],
                  )

              ),
              InkWell(
                onTap: ontap,
                child: Icon(Icons.delete_forever_sharp, color: Colors.red,),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
