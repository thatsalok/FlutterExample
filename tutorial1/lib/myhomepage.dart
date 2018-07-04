import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{

  final String title;
  MyHomePage({this.title}) {
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title,style: new TextStyle(fontSize: 15.0),),
      ) ,
      body: new MySnackBarClass(),
      bottomNavigationBar: new MyBottomNavigationBar(),
    );
  }

}

class MySnackBarClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                onPressed: (){
                  final mySnackBar = new SnackBar(
                      content: Text('Hello from SnackBar'), //text to display
                      duration: Duration(seconds: 10),    // Duration to display
                  );
                  Scaffold.of(context).showSnackBar(mySnackBar);
                },
                child: new Text("Click Me"),
                color: Colors.amber,
              ),
            ],
          )
      ),
    );
  }
}


class MyBottomNavigationBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        new IconButton(icon:new Icon(Icons.airline_seat_recline_normal), onPressed: (){
          print('hello');
        })
      ],
    );
  }
}