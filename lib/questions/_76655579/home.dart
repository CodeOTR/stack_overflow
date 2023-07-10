import 'package:flutter/material.dart';

class Question76655579 extends StatefulWidget {
  Question76655579({super.key, required this.title});

  final String title;

  @override
  State<Question76655579> createState() => _Question76655579State();
}

enum moreVert { rechange, delete }

TextEditingController t1 = TextEditingController();
List TodoVerileri = [];

class _Question76655579State extends State<Question76655579> {
  void veriEkle() {
    setState(() {
      TodoVerileri.add(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListTile(
        onTap: () {},
        title: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Text('Todo'),
        ),
      )),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Tasks()],
        ),
      ),
      floatingActionButton: _FloatingActionButton(context),
    );
  }

  Flexible Tasks() {
    return Flexible(
      child: ListView.builder(
        itemBuilder: (context, indexnum) => ListTile(title: Text(TodoVerileri[indexnum])),
        itemCount: TodoVerileri.length,
      ),
    );
  }

  FloatingActionButton _FloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        pressFun(context);
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }

  Future<dynamic> pressFun(BuildContext context) {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: const Text("Type Your Task Here"),
              actions: [
                TextField(
                  controller: t1,
                ),
                Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          veriEkle();
                        },
                        child: Text('Create'))),
                Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel')))
              ],
            ));
  }
}

class PopUpMen extends StatefulWidget {
  const PopUpMen({super.key});

  @override
  State<PopUpMen> createState() => _PopUpMenState();
}

class _PopUpMenState extends State<PopUpMen> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (value) {
        // your logic
      },
      itemBuilder: (BuildContext bc) {
        return const [
          PopupMenuItem(
              child: Row(
            children: [Icon(Icons.edit), Text('Edit')],
          )),
          PopupMenuItem(
              child: Row(
            children: [Icon(Icons.delete), Text('Delete')],
          )),
        ];
      },
    );
  }
}
