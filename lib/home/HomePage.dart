import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      "note": "Iphone 12Iphone 12Iphone 12Iphone 12",
      "image": "image/images.png"
    },
    {
      "note": "Iphone 12Iphone 12Iphone 12Iphone 12",
      "image": "image/images.png"
    },
    {
      "note": "Iphone 12Iphone 12Iphone 12Iphone 12",
      "image": "image/images.png"
    },
    {
      "note": "Iphone 12Iphone 12Iphone 12Iphone 12",
      "image": "image/images.png"
    },
    {
      "note": "Iphone 12Iphone 12Iphone 12Iphone 12",
      "image": "image/images.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed("AddNote");
          },
        ),
        appBar: AppBar(title: Text("My HomePage")),
        body: Container(
            child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, i) {
                  return Dismissible(
                      key: Key("$i"), child: ListNotes(notes[i]));
                })));
  }
}

class ListNotes extends StatelessWidget {
  final notes;
  ListNotes(this.notes);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(flex: 1, child: Image.asset('images/1.png')),
          Expanded(
              flex: 3,
              child: ListTile(
                  trailing:
                      IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  onTap: () {},
                  subtitle: Text("${notes['note']}"),
                  title: Text("Title"))),
        ],
      ),
    );
  }
}
