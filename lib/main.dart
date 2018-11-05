import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'App de Cálculo de Areas',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Cálculo de Areas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Cálculo de Areas"),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('Selecciona una figura'),
              // isThreeLine: true,
              // subtitle: new Text('This is our Subtitle'),
              // trailing: new Icon(Icons.close),
            ),
            new Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Triangulo'),
                      subtitle: Text('Calculo del area de un triangulo'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrianglePage()),
                        );
                      }),
                ],
              ),
            ),
            new Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Círculo'),
                      subtitle: Text('Calculo del area de un círculo'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CirclePage()),
                        );
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}

class TrianglePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TrianglePage Screen"),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text("BASE"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("ALTURA"),
              ),
            ),
          ],
        ));
  }
}

class CirclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CirclePage Screen"),
      ),
      body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text("RADIO"),
              ),
            ),
          ],
        ),
    );
  }

}
