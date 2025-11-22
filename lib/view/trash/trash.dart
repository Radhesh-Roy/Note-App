import 'package:flutter/material.dart';

import '../../database/notes.dart';
class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Trash", ),
      ),
      body: ListView.builder(
        itemCount: NotesData.trashList.length,
        itemBuilder: (context, i) {
          return InkWell(
            onDoubleTap: (){
              NotesData.list.add(NotesData.trashList[i]);
              NotesData.trashList.removeAt(i);
              setState(() {});
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
                          Text("${NotesData.trashList[i]['title']}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,),),
                          Text("${NotesData.trashList[i]['created_at']}")
                        ],
                      ),

                    ),
                    Padding(
                        padding: EdgeInsetsGeometry.symmetric(
                          horizontal: 10,
                        ),
                        child: Text("${NotesData.trashList[i]['details']}")

                    ),

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
