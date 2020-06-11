import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final _titleController = TextEditingController(text: '');
  final _anotationController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _titleController,
          cursorColor: Colors.white54,
          showCursor: true,
          style: Theme.of(context).textTheme.headline6,
          decoration: InputDecoration(
              hintText: 'Título',
              border: InputBorder.none,
              hintStyle: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white54)),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _anotationController,
              decoration: InputDecoration(
                hintText: 'Anotação',
                border: InputBorder.none,
              ),
              maxLines: 5,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
