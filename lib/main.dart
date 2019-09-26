import 'package:flutter/material.dart';

void main() {
  runApp(ControlApp());
}

class ControlApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Control App"),
          backgroundColor: Colors.red,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("Control"),
                decoration: BoxDecoration(color: Colors.red),
              ),
              ListTile(
                title: Text("Asistencia"),
                onTap: null,
              ),
              ListTile(
                title: Text("Recursos Humanos"),
                onTap: null,
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("Estado:"),
              RaisedButton(
                child: Text("Asistio"),
                onPressed: () {
                  print("Asistio!");
                },
              ),
              RaisedButton(
                child: Text("Llego tarde"),
                onPressed: () {
                  print("Llego tarde!");
                },
              ),
              RaisedButton(
                child: Text("No llego"),
                onPressed: () {
                  print("No llego!");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
