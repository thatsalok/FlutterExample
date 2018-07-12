import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "End Page",
          style: new TextStyle(fontSize: 16.0),
        ),
      ),
      body: new Center(
        child: new Text("Welcome to End Page",style: new TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
      ),
      bottomNavigationBar: _getbottomNavigationBarWidget(context),
    );
  }

  Widget _getbottomNavigationBarWidget(BuildContext context) {
    return Container(
      color: Colors.black87,

      child: new ButtonBar(
        mainAxisSize: MainAxisSize.max,
        alignment: MainAxisAlignment.end,
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.arrow_back,size: 24.0,color: Colors.white,), onPressed: (){
            Navigator.pop(context);
          }),
          new IconButton(icon: new Icon(Icons.home,size: 24.0,color: Colors.white,), onPressed: (){

            Navigator.pushNamedAndRemoveUntil(context, "/", (Route<dynamic> route){ return false;});
          })
        ],
      ),
    );
  }
}