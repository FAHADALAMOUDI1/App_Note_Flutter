import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List notes = [
    {
      "note": 'i have date in 10 pm i have date in 1 pm',
      "image": 'logo.png',
    },
    {
      "note": 'i have date in 10 pm i have date in 2 pm',
      "image": 'logo.png',
    },
    {
      "note": 'i have date in 10 pm i have date in 3 pm',
      "image": 'logo.png',
    },
    {
      "note": 'i have date in 10 pm i have date in 4 pm',
      "image": 'logo.png',
    },
    {
      "note": 'i have date in 10 pm i have date in 5 pm',
      "image": 'logo.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("HomePage"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      onPressed: (){
        Navigator.of(context).pushNamed("addnotes") ;
      },),
      body: Container(
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, i) {
              return Dismissible(key: Key("$i"), child: ListNotes(
                notes: notes[i],
              ));
            }),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final notes;
  // ignore: prefer_const_constructors_in_immutables
  ListNotes({this.notes});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
          // Expanded => this for take the fill of screen
          Expanded(

            flex: 1,
                child: Image.asset("images/facebook.png",fit: BoxFit.fill,height:85,),
                
          ),
          Expanded(
            flex: 4,
            child: ListTile(
            title: Text("Title"),
            subtitle: Text("&{notes['note']}"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
                ),
          ),
      ],),
    );
  }
}
