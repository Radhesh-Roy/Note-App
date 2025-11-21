
import 'package:flutter/material.dart';
class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.white70,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(13)
            ),
            prefixIcon: Icon(Icons.search_rounded),
            suffixIcon: Icon(Icons.mic),
            fillColor: Colors.white,
            filled: true,
            hintText: "Search My Note"
        ),
      ),
    );
  }
}