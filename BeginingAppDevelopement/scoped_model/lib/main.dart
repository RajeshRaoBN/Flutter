import 'package:flutter/material.dart';
import './model/note.dart';
import './model/notesmodel.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(const MyApp());
}

NotesModel notesModel = NotesModel();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new ScopedModel<NotesModel>(
      model: notesModel,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(5.0),
          itemCount: null, //calculating length ist
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: Image.network(
                    //fetching online images
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Noto_Emoji_KitKat_263a.svg/1200px-Noto_Emoji_KitKat_263a.svg.png",
                    height: 20.0,
                    width: 20.0,
                  ),
                  title: Text("name"), //retrieving object's name from list
                ),
                Divider()
              ],
            );
          }),

      floatingActionButton: FloatingActionButton(
        //objects will be added to the database when this button is clicked.
        onPressed: () {
          //this method is executed when the floating button is clicked
        },
        tooltip: 'Add to list new object',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
