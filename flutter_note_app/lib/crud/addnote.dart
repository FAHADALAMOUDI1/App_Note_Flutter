import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
    _AddNotesState createState() => _AddNotesState();
}


class _AddNotesState extends State<AddNotes>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
      ),
      body: Container(
        child: Column(
          children: [
            Form(child: Column(
              children: [
                TextFormField(
                  maxLength: 30,
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Title Note",
                  prefixIcon: Icon(Icons.note),
                ),),

                TextFormField(
                  minLines: 1,
                  maxLines: 3,
                  maxLength: 200,
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Note",
                  prefixIcon: Icon(Icons.note),
                ),),
                ElevatedButton(onPressed: (){},
                child: Text("Add Image For Note",),),
                ElevatedButton(onPressed: (){},
                child: Text("Add Note",),),
              ],
            ))
          ],
        ),
      ),
    );
  }
}