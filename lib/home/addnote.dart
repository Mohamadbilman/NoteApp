import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  AddNote({Key key}) : super(key: key);

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Column(children: [
              TextFormField(
                maxLength: 40,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.title),
                    labelText: "Write Your Title Note"),
              ),
              TextFormField(
                maxLength: 200,
                maxLines: 4,
                minLines: 1,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.notes),
                    labelText: "Write Your Note"),
              ),
              MaterialButton(
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  onPressed: () {},
                  child:
                      Text("Add Note", style: TextStyle(color: Colors.white))),
              MaterialButton(
                  child:
                      Text("Add Image", style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                            height: 180,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Choose Your Image From:",
                                      style: TextStyle(fontSize: 25)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                      onTap: () {},
                                      child: Column(
                                        children: [
                                          Text("Camera"),
                                          Icon(Icons.camera)
                                        ],
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                      onTap: () {},
                                      child: Column(
                                        children: [
                                          Text("Gallery"),
                                          Icon(Icons.photo)
                                        ],
                                      )),
                                  SizedBox(
                                    height: 20,
                                  )
                                ]));
                      },
                    );
                  }),
            ])));
  }
}
