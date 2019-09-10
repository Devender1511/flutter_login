import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "First Application ",  //title
      home: new Homepage(),
      theme: new ThemeData.dark(),
    );
  }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}


class _HomepageState extends State<Homepage>{

String mytext="Hello World";

  void _changeText()
  {
  setState(() {

    mytext="Welcome to Flutter Login";

  });
  }

Widget _bodyWidget(){
  return new Container(
    padding: const EdgeInsets.all(9.0),
    child: new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(mytext),
//          new RaisedButton(
//
//            child: new Text("Login ",style: new TextStyle(color: Colors.deepPurple,
//                fontStyle: FontStyle.italic),),
//            onPressed: _changeText,
//            color: Colors.teal,
//          ),
        ],

      ),
    ),
  );
}

@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }


}





