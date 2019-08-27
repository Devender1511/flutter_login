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
        children: <Widget>[
          new Text(mytext),
          new RaisedButton(
            child: new Text("Login "),
            onPressed: _changeText,
          )
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
    );
  }


}





